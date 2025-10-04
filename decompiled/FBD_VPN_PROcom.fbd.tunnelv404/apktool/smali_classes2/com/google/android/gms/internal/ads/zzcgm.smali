.class public final Lcom/google/android/gms/internal/ads/zzcgm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcei;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbgr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzbgu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/ads/internal/util/zzbh;

.field private final zzg:[J

.field private final zzh:[Ljava/lang/String;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/ads/zzcfr;

.field private zzo:Z

.field private zzp:Z

.field private zzq:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzbgr;)V
    .locals 8
    .param p4    # Lcom/google/android/gms/internal/ads/zzbgu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzbgr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 5
    .line 6
    invoke-direct {v6}, Lcom/google/android/gms/ads/internal/util/zzbf;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v7, 0x2

    .line 12
    new-array v1, v7, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 27
    .line 28
    move-object v0, v6

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v1, v7, [J

    .line 35
    .line 36
    fill-array-data v1, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 47
    .line 48
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 49
    .line 50
    move-object v0, v6

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v7, [J

    .line 57
    .line 58
    fill-array-data v1, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 69
    .line 70
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 71
    .line 72
    move-object v0, v6

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v1, v7, [J

    .line 79
    .line 80
    fill-array-data v1, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 91
    .line 92
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 93
    .line 94
    move-object v0, v6

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v1, v7, [J

    .line 101
    .line 102
    fill-array-data v1, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 113
    .line 114
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 115
    .line 116
    move-object v0, v6

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v1, v7, [J

    .line 123
    .line 124
    fill-array-data v1, :array_5

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 135
    .line 136
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    move-object v0, v6

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzbf;->zzb()Lcom/google/android/gms/ads/internal/util/zzbh;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzf:Lcom/google/android/gms/ads/internal/util/zzbh;

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzi:Z

    .line 153
    .line 154
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzj:Z

    .line 155
    .line 156
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzk:Z

    .line 157
    .line 158
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzl:Z

    .line 159
    .line 160
    const-wide/16 v1, -0x1

    .line 161
    .line 162
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzq:J

    .line 163
    .line 164
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/content/Context;

    .line 165
    .line 166
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzc:Lcom/google/android/gms/internal/ads/zzcei;

    .line 167
    .line 168
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzb:Ljava/lang/String;

    .line 169
    .line 170
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zze:Lcom/google/android/gms/internal/ads/zzbgu;

    .line 171
    .line 172
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzd:Lcom/google/android/gms/internal/ads/zzbgr;

    .line 173
    .line 174
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzA:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ljava/lang/String;

    .line 185
    .line 186
    if-nez p1, :cond_0

    .line 187
    .line 188
    new-array p1, v0, [Ljava/lang/String;

    .line 189
    .line 190
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzh:[Ljava/lang/String;

    .line 191
    .line 192
    new-array p1, v0, [J

    .line 193
    .line 194
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzg:[J

    .line 195
    .line 196
    return-void

    .line 197
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array p3, v7, [J

    .line 200
    .line 201
    fill-array-data p3, :array_6

    .line 202
    .line 203
    .line 204
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    array-length p2, p1

    .line 216
    new-array p3, p2, [Ljava/lang/String;

    .line 217
    .line 218
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzh:[Ljava/lang/String;

    .line 219
    .line 220
    new-array p2, p2, [J

    .line 221
    .line 222
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzg:[J

    .line 223
    .line 224
    :goto_0
    array-length p2, p1

    .line 225
    if-ge v0, p2, :cond_1

    .line 226
    .line 227
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzg:[J

    .line 228
    .line 229
    aget-object p3, p1, v0

    .line 230
    .line 231
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 232
    .line 233
    .line 234
    move-result-wide p3

    .line 235
    aput-wide p3, p2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :catch_0
    move-exception p2

    .line 239
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    const/4 p4, 0x7

    .line 242
    new-array p4, p4, [J

    .line 243
    .line 244
    fill-array-data p4, :array_7

    .line 245
    .line 246
    .line 247
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzg:[J

    .line 258
    .line 259
    aput-wide v1, p2, v0

    .line 260
    .line 261
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_1
    return-void

    .line 265
    :array_0
    .array-data 8
        0x136fa781446565b2L    # 4.591198241016158E-215
        -0x3f36b354484603caL    # -12953.34154438796
    .end array-data

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
    :array_1
    .array-data 8
        -0xd33cec9d1f70c14L    # -9.624894276050915E244
        -0x1a06d2a52a74ae40L    # -1.6715687610247014E183
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_2
    .array-data 8
        0x470cd49420b0eeecL    # 1.8711989845052622E34
        0x236cb1bf779e3b97L
    .end array-data

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
    :array_3
    .array-data 8
        0x3a90d0cdc7cc1a0aL    # 1.3583565784260715E-26
        0x5f1356f3e95a0f00L    # 9.891602983567416E149
    .end array-data

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
    :array_4
    .array-data 8
        0x22274f92aa8b0d4cL    # 3.733617766236922E-144
        -0x495b2260bf60d92L
    .end array-data

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
    .line 324
    .line 325
    :array_5
    .array-data 8
        -0x471a82a7f9c3c92aL    # -1.2933597223790249E-34
        -0x4515054d7508a3d7L    # -6.973982193983817E-25
    .end array-data

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
    :array_6
    .array-data 8
        0x11f3a0212a2b3abdL
        -0x528c46c502d22915L    # -9.682478159224687E-90
    .end array-data

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
    :array_7
    .array-data 8
        0x1731211f1296a7d4L    # 5.72881104439233E-197
        -0x71b1713603f763efL    # -9.165477923472044E-240
        0x5029d43ba334917dL    # 1.4953989626056364E78
        0x72d9266f0551e394L    # 1.7172627467815588E245
        -0x4f5d7942606c6261L    # -2.0479554119089185E-74
        0x6df8246b84c10d47L    # 5.454247604660254E221
        0x7bc71a24e28cb652L    # 1.7588864497839204E288
    .end array-data
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcfr;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zze:Lcom/google/android/gms/internal/ads/zzbgu;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzd:Lcom/google/android/gms/internal/ads/zzbgr;

    .line 23
    .line 24
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzbgr;[Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzi:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zze:Lcom/google/android/gms/internal/ads/zzbgu;

    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfr;->zzj()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbgu;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzn:Lcom/google/android/gms/internal/ads/zzcfr;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x49c6bf69041ac673L    # 2.597327749555729E47
        0x3967fb4def7653d4L    # 3.694959452928562E-32
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        -0xf7c2866a574af65L    # -9.857711759859213E233
        -0x5272af4f790b95L
    .end array-data
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzi:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzj:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zze:Lcom/google/android/gms/internal/ads/zzbgu;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzd:Lcom/google/android/gms/internal/ads/zzbgr;

    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    filled-new-array {v2}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzbgr;[Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzj:Z

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x473d6910310cf2a6L    # 1.5270754473691212E35
        0x506caa3b68d72670L    # 2.6553413203703098E79
    .end array-data
.end method

.method public final zzc()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzm:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzj:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzk:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zze:Lcom/google/android/gms/internal/ads/zzbgu;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzd:Lcom/google/android/gms/internal/ads/zzbgr;

    .line 15
    .line 16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    new-array v4, v4, [J

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    filled-new-array {v3}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzbgr;[Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzk:Z

    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :array_0
    .array-data 8
        -0x2f3523a448385c76L    # -1.5924557815517532E81
        0x7eb56b2e58266c3eL    # 2.295029559043906E302
    .end array-data
.end method

.method public final zzd()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbip;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzo:Z

    .line 18
    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    new-instance v7, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v1, [J

    .line 29
    .line 30
    fill-array-data v3, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    new-array v4, v4, [J

    .line 44
    .line 45
    fill-array-data v4, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v7, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzb:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v4, v1, [J

    .line 63
    .line 64
    fill-array-data v4, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzn:Lcom/google/android/gms/internal/ads/zzcfr;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcfr;->zzj()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v4, v1, [J

    .line 86
    .line 87
    fill-array-data v4, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzf:Lcom/google/android/gms/ads/internal/util/zzbh;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_0

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/google/android/gms/ads/internal/util/zzbe;

    .line 121
    .line 122
    iget-object v4, v3, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget v5, v3, Lcom/google/android/gms/ads/internal/util/zzbe;->zze:I

    .line 129
    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v8, v1, [J

    .line 137
    .line 138
    fill-array-data v8, :array_4

    .line 139
    .line 140
    .line 141
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v7, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v4, v3, Lcom/google/android/gms/ads/internal/util/zzbe;->zza:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget-wide v5, v3, Lcom/google/android/gms/ads/internal/util/zzbe;->zzd:D

    .line 162
    .line 163
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v6, v1, [J

    .line 170
    .line 171
    fill-array-data v6, :array_5

    .line 172
    .line 173
    .line 174
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v7, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_0
    const/4 v2, 0x0

    .line 190
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzg:[J

    .line 191
    .line 192
    array-length v4, v3

    .line 193
    if-ge v2, v4, :cond_2

    .line 194
    .line 195
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzh:[Ljava/lang/String;

    .line 196
    .line 197
    aget-object v4, v4, v2

    .line 198
    .line 199
    if-eqz v4, :cond_1

    .line 200
    .line 201
    aget-wide v5, v3, v2

    .line 202
    .line 203
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v6, v1, [J

    .line 210
    .line 211
    fill-array-data v6, :array_6

    .line 212
    .line 213
    .line 214
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_1
    add-int/2addr v2, v0

    .line 233
    goto :goto_1

    .line 234
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/content/Context;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzc:Lcom/google/android/gms/internal/ads/zzcei;

    .line 237
    .line 238
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 243
    .line 244
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    const/4 v2, 0x3

    .line 247
    new-array v2, v2, [J

    .line 248
    .line 249
    fill-array-data v2, :array_7

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const/4 v8, 0x1

    .line 260
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/util/zzt;->zzh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 261
    .line 262
    .line 263
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzo:Z

    .line 264
    .line 265
    :cond_3
    return-void

    .line 266
    nop

    .line 267
    :array_0
    .array-data 8
        -0x29b4c14e53a96bfdL    # -4.998890974481789E107
        -0x7ed4c2671050aad5L    # -4.965366173036659E-303
    .end array-data

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
    :array_1
    .array-data 8
        0x16cc9f86cf4e6c32L    # 7.47877234063008E-199
        -0x1985e693b45a4672L    # -4.435947021169125E185
        -0x2a2f1a520b687cafL    # -2.4221044866351995E105
        -0x59e637191eadf351L    # -3.809124117230214E-125
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_2
    .array-data 8
        0x44ee4b255b7e73b6L    # 1.1444575374068424E24
        0x6343d28a87f42035L    # 1.4961818417345482E170
    .end array-data

    :array_3
    .array-data 8
        -0x5e67034fb4db0f75L    # -7.816590701006749E-147
        -0x374e9756fee9b1ecL    # -1.5165228721756853E42
    .end array-data

    :array_4
    .array-data 8
        0x80fd34f4952830fL
        -0xa8dbde23c39a263L    # -5.482969772786599E257
    .end array-data

    :array_5
    .array-data 8
        -0x1d613e74ecc43580L    # -1.1335165566202512E167
        -0xd4f47f89048698aL
    .end array-data

    :array_6
    .array-data 8
        -0x3633cae02e4c9c24L
        -0x5ba3e50c44dda46eL
    .end array-data

    :array_7
    .array-data 8
        0x76448b472a5fc57L
        0x3fc4e3050a9adb88L    # 0.16317809121911986
        -0x3a290baa110c82e0L    # -2.8416215700307638E28
    .end array-data
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzm:Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcfr;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzk:Z

    .line 7
    .line 8
    if-eqz v4, :cond_1

    .line 9
    .line 10
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzl:Z

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzl:Z

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    new-array v5, v5, [J

    .line 28
    .line 29
    fill-array-data v5, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zze:Lcom/google/android/gms/internal/ads/zzbgu;

    .line 43
    .line 44
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzd:Lcom/google/android/gms/internal/ads/zzbgr;

    .line 45
    .line 46
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v7, v2, [J

    .line 49
    .line 50
    fill-array-data v7, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    filled-new-array {v6}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzbgr;[Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzl:Z

    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzm:Z

    .line 78
    .line 79
    const-wide/16 v7, 0x1

    .line 80
    .line 81
    const-wide/16 v9, -0x1

    .line 82
    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzp:Z

    .line 86
    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzq:J

    .line 90
    .line 91
    cmp-long v6, v11, v9

    .line 92
    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    .line 97
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    long-to-double v11, v11

    .line 102
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzq:J

    .line 103
    .line 104
    sub-long v13, v4, v13

    .line 105
    .line 106
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzf:Lcom/google/android/gms/ads/internal/util/zzbh;

    .line 107
    .line 108
    long-to-double v13, v13

    .line 109
    div-double/2addr v11, v13

    .line 110
    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/ads/internal/util/zzbh;->zzb(D)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzm:Z

    .line 114
    .line 115
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzp:Z

    .line 116
    .line 117
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzq:J

    .line 118
    .line 119
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzB:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 120
    .line 121
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/Long;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcfr;->zza()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    int-to-long v11, v6

    .line 140
    const/4 v6, 0x0

    .line 141
    :goto_0
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzh:[Ljava/lang/String;

    .line 142
    .line 143
    array-length v14, v13

    .line 144
    if-ge v6, v14, :cond_8

    .line 145
    .line 146
    aget-object v13, v13, v6

    .line 147
    .line 148
    if-eqz v13, :cond_4

    .line 149
    .line 150
    :cond_3
    move-object/from16 v13, p1

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzg:[J

    .line 154
    .line 155
    aget-wide v14, v13, v6

    .line 156
    .line 157
    sub-long v13, v11, v14

    .line 158
    .line 159
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    cmp-long v15, v4, v13

    .line 164
    .line 165
    if-lez v15, :cond_3

    .line 166
    .line 167
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcgm;->zzh:[Ljava/lang/String;

    .line 168
    .line 169
    const/16 v5, 0x8

    .line 170
    .line 171
    move-object/from16 v13, p1

    .line 172
    .line 173
    invoke-virtual {v13, v5, v5}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    const-wide/16 v14, 0x3f

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    const-wide/16 v16, 0x0

    .line 181
    .line 182
    :goto_1
    if-ge v7, v5, :cond_7

    .line 183
    .line 184
    const/4 v8, 0x0

    .line 185
    :goto_2
    if-ge v8, v5, :cond_6

    .line 186
    .line 187
    invoke-virtual {v11, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 188
    .line 189
    .line 190
    move-result v18

    .line 191
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    .line 192
    .line 193
    .line 194
    move-result v19

    .line 195
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    .line 196
    .line 197
    .line 198
    move-result v20

    .line 199
    add-int v20, v20, v19

    .line 200
    .line 201
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    .line 202
    .line 203
    .line 204
    move-result v18

    .line 205
    add-int v5, v18, v20

    .line 206
    .line 207
    const/16 v12, 0x80

    .line 208
    .line 209
    if-le v5, v12, :cond_5

    .line 210
    .line 211
    const-wide/16 v12, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_5
    const-wide/16 v12, 0x0

    .line 215
    .line 216
    :goto_3
    long-to-int v5, v14

    .line 217
    shl-long/2addr v12, v5

    .line 218
    or-long v16, v16, v12

    .line 219
    .line 220
    add-long/2addr v14, v9

    .line 221
    add-int/2addr v8, v3

    .line 222
    const/16 v5, 0x8

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    add-int/2addr v7, v3

    .line 226
    const/16 v5, 0x8

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_7
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    new-array v3, v3, [Ljava/lang/Object;

    .line 234
    .line 235
    aput-object v5, v3, v1

    .line 236
    .line 237
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v2, v2, [J

    .line 240
    .line 241
    fill-array-data v2, :array_2

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    aput-object v1, v4, v6

    .line 256
    .line 257
    return-void

    .line 258
    :goto_4
    add-int/2addr v6, v3

    .line 259
    const-wide/16 v7, 0x1

    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_8
    return-void

    .line 263
    :array_0
    .array-data 8
        0x32b54373a0659a39L    # 2.0190884401284084E-64
        0x93396c23721e1bbL
        0x232184b7a1f7230bL
        -0xe1df8ec393d6aa2L    # -3.7565187649470654E240
        -0x763bb14a43d1912aL
    .end array-data

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
    .line 286
    .line 287
    :array_1
    .array-data 8
        -0x7d3c5931c9bc93adL    # -2.403874692800137E-295
        -0x593501e76c58d75eL    # -8.166498386252262E-122
    .end array-data

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
    :array_2
    .array-data 8
        -0x349c071fa0e04aebL    # -1.5303633521256722E55
        -0x637c0b903fa8c0e8L
    .end array-data
.end method
