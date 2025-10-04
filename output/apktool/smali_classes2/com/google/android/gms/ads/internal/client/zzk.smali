.class public final Lcom/google/android/gms/ads/internal/client/zzk;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbxy;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0xaeed67464d66a1cL    # -8.052884655931743E255
        0x3548044c33d1ff6eL    # 5.014939278584443E-52
        -0x7788e626cc277cdfL    # -6.996391334300398E-268
        0x7077f6cdff58198dL    # 5.952747034086199E233
        0xd8fa9144814dcf9L
        -0x7e6e6adfb6fa6dbdL    # -4.102282465527074E-301
        -0x593eafc62823000fL    # -5.238098870543351E-122
    .end array-data
.end method


# virtual methods
.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzbv;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x3fc023e158ea8ba4L    # 0.12609497872935294
        -0x4655ca322860dce7L    # -6.4613062910162115E-31
        0x6f0fd5af0de66f17L    # 9.426870610647624E226
        0x3c8f8a61697e18f1L    # 5.471413060534702E-17
        0x2d80938f4e3d4dcfL    # 1.627502470535629E-89
        0x5da495035bcc6496L    # 1.2549235586044817E143
        -0x4c34cecb178bedd9L    # -3.3843512087453114E-59
        0x36ccdf022b4a4000L    # 1.011426642881024E-44
        0x68bff6b6ac13f1f3L    # 3.7333144723114186E196
    .end array-data
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;I)Lcom/google/android/gms/ads/internal/client/zzbu;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v1, 0x6

    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzki:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v4, v0, [J

    .line 33
    .line 34
    fill-array-data v4, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzj;->zza:Lcom/google/android/gms/ads/internal/client/zzj;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcef; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 45
    .line 46
    move-object v11, p1

    .line 47
    :try_start_1
    invoke-static {p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzceg;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcee;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v4, v2

    .line 52
    check-cast v4, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 53
    .line 54
    const v9, 0xe52bf80

    .line 55
    .line 56
    .line 57
    move-object v6, p2

    .line 58
    move-object v7, p3

    .line 59
    move-object/from16 v8, p4

    .line 60
    .line 61
    move/from16 v10, p5

    .line 62
    .line 63
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/ads/internal/client/zzbv;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;II)Landroid/os/IBinder;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    move-object v4, p0

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v0, v0, [J

    .line 75
    .line 76
    fill-array-data v0, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    instance-of v4, v0, Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 91
    .line 92
    if-eqz v4, :cond_1

    .line 93
    .line 94
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 95
    .line 96
    :goto_0
    move-object v4, p0

    .line 97
    :goto_1
    move-object v3, v0

    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_3

    .line 102
    :catch_1
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :catch_2
    move-exception v0

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbs;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzbs;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcef; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_3
    move-exception v0

    .line 113
    :goto_2
    move-object v11, p1

    .line 114
    goto :goto_3

    .line 115
    :catch_4
    move-exception v0

    .line 116
    goto :goto_2

    .line 117
    :catch_5
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object v4, p0

    .line 124
    iput-object v2, v4, Lcom/google/android/gms/ads/internal/client/zzk;->zza:Lcom/google/android/gms/internal/ads/zzbxy;

    .line 125
    .line 126
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    const/4 v6, 0x7

    .line 129
    new-array v6, v6, [J

    .line 130
    .line 131
    fill-array-data v6, :array_2

    .line 132
    .line 133
    .line 134
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzbxy;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v1, v1, [J

    .line 147
    .line 148
    fill-array-data v1, :array_3

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_2
    move-object v4, p0

    .line 163
    move-object v11, p1

    .line 164
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    move-object v5, v2

    .line 173
    check-cast v5, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 174
    .line 175
    const v10, 0xe52bf80

    .line 176
    .line 177
    .line 178
    move-object v7, p2

    .line 179
    move-object v8, p3

    .line 180
    move-object/from16 v9, p4

    .line 181
    .line 182
    move/from16 v11, p5

    .line 183
    .line 184
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/ads/internal/client/zzbv;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;II)Landroid/os/IBinder;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-nez v2, :cond_3

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v0, v0, [J

    .line 194
    .line 195
    fill-array-data v0, :array_4

    .line 196
    .line 197
    .line 198
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    instance-of v5, v0, Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 210
    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catch_6
    move-exception v0

    .line 217
    goto :goto_5

    .line 218
    :catch_7
    move-exception v0

    .line 219
    goto :goto_5

    .line 220
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbs;

    .line 221
    .line 222
    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzbs;-><init>(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_2 .. :try_end_2} :catch_6

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :goto_4
    return-object v3

    .line 228
    :goto_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v1, v1, [J

    .line 231
    .line 232
    fill-array-data v1, :array_5

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    return-object v3

    .line 246
    nop

    .line 247
    :array_0
    .array-data 8
        -0x7af657452fc7accaL
        0x4ba0ea04deb499c2L    # 2.0736671390445927E56
        0x2621947794e0b2b9L    # 5.194089580867596E-125
        -0x59b71070073f7f1cL
        0x6637d94282a576b4L    # 2.5333870617081025E184
        -0x26712347e4202565L    # -2.5502038909118616E123
        0x2494194fc967a2bcL
        0x3abc9d29df005200L    # 9.245656249645095E-26
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_1
    .array-data 8
        0x7796a564dabf1226L    # 1.1683393575243608E268
        0x4388eb3ab6bb952bL    # 2.24449179117856096E17
        -0x1e360f314bcb2471L    # -1.1670476635262017E163
        -0x2078e4a7b2aaa47L    # -6.394566647576691E298
        0x63d1e466b9cea89aL    # 6.91450491750045E172
        -0x27856aa10a89620bL    # -1.6759079229361411E118
        -0x5aaead1566b6e749L    # -6.248090867045604E-129
        0x29f9910d62879277L
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
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
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_2
    .array-data 8
        0x4fa99d6aae203036L    # 5.792976241642586E75
        -0x6cd20b211bf4ad10L
        -0x7c89fc53b850a504L    # -5.515057349354953E-292
        -0x770ebd7c2da5e4bdL
        0x6f5099ed031be922L    # 1.5731064653342406E228
        0x138880bf20d31f78L
        -0x78955aab1a6ac5baL
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
        -0x10fca4bb7cc68221L    # -5.731837930991457E226
        0x28e382cceebdc3bcL
        -0x4f6e3dec0b01efc1L    # -9.815173875394663E-75
        0x473cae0bc16ade1eL    # 1.4891438267960017E35
        -0x318cbe3eabcd8d1bL    # -8.306621064458834E69
        0x1990d1066bcb25b8L
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
    :array_4
    .array-data 8
        -0x768386a248512a41L    # -5.651628347543317E-263
        -0x16d8bdceceb1fd88L
        0x5f3b1b931f4aed11L    # 5.545883455434693E150
        0x3fee1eff40448315L    # 0.941283822558122
        -0x7d3f8b807a815337L    # -2.012862079187556E-295
        -0x143870217462a36bL    # -1.5492408375135259E211
        0x11481cb03524cbf7L
        -0x220a7dbf79f94074L    # -4.19656600083077E144
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
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_5
    .array-data 8
        0x1e4ed829527c0fd8L
        -0x729cab13e3c45c23L    # -3.539029605019884E-244
        0x7a060aa10b6afe4eL    # 6.251547374526602E279
        0x4e0749e7dc91484dL    # 7.848274412034712E67
        -0x202f5c2d55750d28L    # -3.486016080132232E153
        0x3354de23a10c781fL    # 2.029065778179529E-61
    .end array-data
.end method
