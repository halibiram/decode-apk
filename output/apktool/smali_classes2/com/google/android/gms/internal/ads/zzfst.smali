.class public final Lcom/google/android/gms/internal/ads/zzfst;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfsw;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfsw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Z

    return-void
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfst;
    .locals 5

    .line 1
    const/4 p2, 0x5

    .line 2
    const/4 v0, 0x2

    .line 3
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfrv; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :try_start_1
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 20
    .line 21
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    new-array v4, v4, [J

    .line 25
    .line 26
    fill-array-data v4, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 37
    .line 38
    .line 39
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    move-object v3, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/16 v4, 0x9

    .line 52
    .line 53
    new-array v4, v4, [J

    .line 54
    .line 55
    fill-array-data v4, :array_2

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
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzfsw;

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfsw;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfsu;

    .line 79
    .line 80
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzfsu;-><init>(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .line 82
    .line 83
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfsw;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array p1, v0, [J

    .line 93
    .line 94
    fill-array-data p1, :array_3

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array p1, p2, [J

    .line 106
    .line 107
    fill-array-data p1, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfst;

    .line 117
    .line 118
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(Lcom/google/android/gms/internal/ads/zzfsw;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfrv; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :catch_1
    move-exception p0

    .line 123
    :try_start_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfrv;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfrv;-><init>(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :goto_1
    :try_start_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfrv;

    .line 130
    .line 131
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfrv;-><init>(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p1
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzfrv; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 135
    :catch_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array p1, v0, [J

    .line 138
    .line 139
    fill-array-data p1, :array_5

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array p1, p2, [J

    .line 151
    .line 152
    fill-array-data p1, :array_6

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfsx;

    .line 162
    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsx;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfst;

    .line 167
    .line 168
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(Lcom/google/android/gms/internal/ads/zzfsw;)V

    .line 169
    .line 170
    .line 171
    return-object p1

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        -0x639f3bf4e5c8b851L    # -5.422962744382072E-172
        -0x4020ef28fdca67c9L    # -0.48540282455212796
        -0x128fac926299982bL    # -1.440767032246653E219
        0x5675f16985579b89L    # 3.22088177131343E108
        0x4fd1b2edad89e0dL
        -0x35173949e300250L
        0x7f620c1e8e580fabL    # 3.960398127943069E305
        -0x756a5cb8f75929e2L    # -1.12584052075719E-257
        0x4f0d8ad8dd3c7584L    # 6.524606565224777E72
        -0x3e945c4fce7e8d2cL    # -1.4491009547051825E7
    .end array-data

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
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_1
    .array-data 8
        -0x12292561e88a1ce4L    # -1.2907988762105669E221
        -0x2ae2c3aefbc92c1cL    # -1.0231297890451746E102
        -0x19b03282c7218ccdL    # -6.756647195531263E184
        -0xe086b8d25f1b593L    # -9.826935218093192E240
        0x573374f8a362376eL    # 1.1698023067843785E112
        0x60f4ff1670f1b9bbL    # 1.1530902874215823E159
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_2
    .array-data 8
        -0x6c670cbf97d88c0aL
        0x55347e9c3088f8c5L    # 2.8689129444923554E102
        0x6327d3b8bdae821eL    # 4.496117243653624E169
        0xc7a9a4b1ee0665eL    # 1.4862417263060008E-248
        0x5fe13c45c35c584aL    # 7.221545700486441E153
        0x7b62d0963bd2ded9L    # 2.2382331523760895E286
        0x65160ed3a900e031L    # 8.938444408857904E178
        -0x4234e6f05483df01L    # -4.9290784505740164E-11
        0x2b92062ce780487aL    # 8.24053798727077E-99
    .end array-data

    .line 246
    .line 247
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
    .line 284
    .line 285
    :array_3
    .array-data 8
        0x7ebb26158eb9a40fL    # 2.9090136916720613E302
        0x2732fc4967a9e93aL    # 7.352307470919936E-120
    .end array-data

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
    :array_4
    .array-data 8
        -0x79d9d74deaade4a1L    # -4.88296425886202E-279
        -0x42768e5f33f228a0L    # -2.8926319622337604E-12
        0x27ca05696701fd73L
        -0x5794c246e35ab01L
        0x11017bce7f8aa1d4L    # 9.22538764517E-227
    .end array-data

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
    .line 320
    .line 321
    :array_5
    .array-data 8
        0x5ed9348dadb4c2e6L    # 8.057299728616662E148
        0x71638780668b85a5L    # 1.5896200461725875E238
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
    :array_6
    .array-data 8
        0x45df2392514ed5bL
        -0x1316c7e7eb505727L    # -4.346871318845112E216
        0x78d2c5363a512cd7L    # 1.0154268517345844E274
        0x2348d795fdee4e0dL    # 1.0430398000842815E-138
        0x7d89ae3f93768539L    # 5.2484599398241575E296
    .end array-data
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzfst;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsx;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsx;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfst;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(Lcom/google/android/gms/internal/ads/zzfsw;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x32973b1261a3166dL    # -8.151583005409002E64
        0x2124bb7d3e5dd503L    # 5.066888080134815E-149
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        -0x74f04a3b5918cd56L    # -2.111885503818838E-255
        0x3eff14da065391b4L    # 2.9641582291699365E-5
        0x5c7e173d3a548f97L    # 3.4993828326322695E137
        -0x2bfd7b3cbe80c1aaL    # -4.944437356619883E96
        -0x755a9eeb6df08e91L    # -2.224772332680172E-257
    .end array-data
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/ads/zzfss;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfss;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfss;-><init>(Lcom/google/android/gms/internal/ads/zzfst;[BLcom/google/android/gms/internal/ads/zzfsr;)V

    return-object v0
.end method
