.class public final Lcom/google/android/gms/internal/ads/zzana;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamy;


# static fields
.field private static final zza:[D


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaea;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaon;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzfp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzann;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:[Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzamz;

.field private zzi:J

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:Z

.field private zzq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzana;->zza:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzana;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzaon;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzaon;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzg:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamz;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzamz;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzann;

    const/16 v0, 0xb2

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzann;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    goto :goto_0

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v4, 0x3

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzana;->zzi:J

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    int-to-long v10, v10

    .line 29
    add-long/2addr v8, v10

    .line 30
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzana;->zzi:J

    .line 31
    .line 32
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    move-object/from16 v10, p1

    .line 39
    .line 40
    invoke-interface {v8, v10, v9}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzana;->zzg:[Z

    .line 44
    .line 45
    invoke-static {v7, v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzgm;->zza([BII[Z)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-ne v8, v6, :cond_2

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Z

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzamz;

    .line 56
    .line 57
    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzamz;->zza([BII)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzann;->zza([BII)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    add-int/lit8 v11, v8, 0x3

    .line 73
    .line 74
    aget-byte v9, v9, v11

    .line 75
    .line 76
    and-int/lit16 v9, v9, 0xff

    .line 77
    .line 78
    sub-int v12, v8, v5

    .line 79
    .line 80
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Z

    .line 81
    .line 82
    if-nez v13, :cond_a

    .line 83
    .line 84
    if-lez v12, :cond_3

    .line 85
    .line 86
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzamz;

    .line 87
    .line 88
    invoke-virtual {v13, v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzamz;->zza([BII)V

    .line 89
    .line 90
    .line 91
    :cond_3
    if-gez v12, :cond_4

    .line 92
    .line 93
    neg-int v13, v12

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 v13, 0x0

    .line 96
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzamz;

    .line 97
    .line 98
    invoke-virtual {v15, v9, v13}, Lcom/google/android/gms/internal/ads/zzamz;->zzc(II)Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-eqz v13, :cond_a

    .line 103
    .line 104
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzamz;

    .line 105
    .line 106
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzana;->zzb:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzamz;->zzc:[B

    .line 112
    .line 113
    iget v3, v13, Lcom/google/android/gms/internal/ads/zzamz;->zza:I

    .line 114
    .line 115
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    aget-byte v14, v3, v2

    .line 120
    .line 121
    and-int/lit16 v14, v14, 0xff

    .line 122
    .line 123
    const/16 v16, 0x5

    .line 124
    .line 125
    aget-byte v4, v3, v16

    .line 126
    .line 127
    and-int/lit16 v1, v4, 0xff

    .line 128
    .line 129
    const/16 v18, 0x6

    .line 130
    .line 131
    aget-byte v2, v3, v18

    .line 132
    .line 133
    and-int/lit16 v2, v2, 0xff

    .line 134
    .line 135
    const/16 v18, 0x7

    .line 136
    .line 137
    aget-byte v10, v3, v18

    .line 138
    .line 139
    and-int/lit16 v10, v10, 0xf0

    .line 140
    .line 141
    and-int/lit8 v4, v4, 0xf

    .line 142
    .line 143
    move/from16 v19, v11

    .line 144
    .line 145
    const/4 v11, 0x4

    .line 146
    shl-int/2addr v14, v11

    .line 147
    shr-int/2addr v1, v11

    .line 148
    or-int/2addr v1, v14

    .line 149
    shr-int/2addr v10, v11

    .line 150
    const/16 v14, 0x8

    .line 151
    .line 152
    shl-int/2addr v4, v14

    .line 153
    or-int/2addr v2, v4

    .line 154
    const/4 v4, 0x2

    .line 155
    if-eq v10, v4, :cond_7

    .line 156
    .line 157
    const/4 v4, 0x3

    .line 158
    if-eq v10, v4, :cond_6

    .line 159
    .line 160
    if-eq v10, v11, :cond_5

    .line 161
    .line 162
    const/high16 v4, 0x3f800000    # 1.0f

    .line 163
    .line 164
    :goto_2
    const/4 v11, 0x3

    .line 165
    goto :goto_4

    .line 166
    :cond_5
    mul-int/lit8 v4, v2, 0x79

    .line 167
    .line 168
    mul-int/lit8 v10, v1, 0x64

    .line 169
    .line 170
    :goto_3
    int-to-float v4, v4

    .line 171
    int-to-float v10, v10

    .line 172
    div-float/2addr v4, v10

    .line 173
    goto :goto_2

    .line 174
    :cond_6
    mul-int/lit8 v4, v2, 0x10

    .line 175
    .line 176
    mul-int/lit8 v10, v1, 0x9

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    const/4 v4, 0x4

    .line 180
    mul-int/lit8 v10, v2, 0x4

    .line 181
    .line 182
    const/4 v11, 0x3

    .line 183
    mul-int/lit8 v4, v1, 0x3

    .line 184
    .line 185
    int-to-float v10, v10

    .line 186
    int-to-float v4, v4

    .line 187
    div-float v4, v10, v4

    .line 188
    .line 189
    :goto_4
    new-instance v10, Lcom/google/android/gms/internal/ads/zzak;

    .line 190
    .line 191
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 195
    .line 196
    .line 197
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v14, v11, [J

    .line 200
    .line 201
    fill-array-data v14, :array_0

    .line 202
    .line 203
    .line 204
    invoke-direct {v15, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzS(F)Lcom/google/android/gms/internal/ads/zzak;

    .line 221
    .line 222
    .line 223
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    aget-byte v2, v3, v18

    .line 235
    .line 236
    and-int/lit8 v2, v2, 0xf

    .line 237
    .line 238
    add-int/lit8 v2, v2, -0x1

    .line 239
    .line 240
    const-wide/16 v14, 0x0

    .line 241
    .line 242
    if-ltz v2, :cond_9

    .line 243
    .line 244
    const/16 v4, 0x8

    .line 245
    .line 246
    if-ge v2, v4, :cond_9

    .line 247
    .line 248
    sget-object v4, Lcom/google/android/gms/internal/ads/zzana;->zza:[D

    .line 249
    .line 250
    aget-wide v14, v4, v2

    .line 251
    .line 252
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzamz;->zzb:I

    .line 253
    .line 254
    add-int/lit8 v2, v2, 0x9

    .line 255
    .line 256
    aget-byte v2, v3, v2

    .line 257
    .line 258
    and-int/lit8 v3, v2, 0x60

    .line 259
    .line 260
    shr-int/lit8 v3, v3, 0x5

    .line 261
    .line 262
    and-int/lit8 v2, v2, 0x1f

    .line 263
    .line 264
    if-eq v3, v2, :cond_8

    .line 265
    .line 266
    int-to-double v3, v3

    .line 267
    const/4 v10, 0x1

    .line 268
    add-int/2addr v2, v10

    .line 269
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 270
    .line 271
    add-double v3, v3, v16

    .line 272
    .line 273
    move v10, v12

    .line 274
    int-to-double v11, v2

    .line 275
    div-double/2addr v3, v11

    .line 276
    mul-double v14, v14, v3

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_8
    move v10, v12

    .line 280
    :goto_5
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    div-double/2addr v2, v14

    .line 286
    double-to-long v14, v2

    .line 287
    goto :goto_6

    .line 288
    :cond_9
    move v10, v12

    .line 289
    :goto_6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 298
    .line 299
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v3, Lcom/google/android/gms/internal/ads/zzam;

    .line 302
    .line 303
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v1, Ljava/lang/Long;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 311
    .line 312
    .line 313
    move-result-wide v1

    .line 314
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 315
    .line 316
    const/4 v1, 0x1

    .line 317
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Z

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_a
    move/from16 v19, v11

    .line 321
    .line 322
    move v10, v12

    .line 323
    :goto_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 324
    .line 325
    if-eqz v1, :cond_e

    .line 326
    .line 327
    if-lez v10, :cond_b

    .line 328
    .line 329
    invoke-virtual {v1, v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzann;->zza([BII)V

    .line 330
    .line 331
    .line 332
    const/4 v1, 0x0

    .line 333
    goto :goto_8

    .line 334
    :cond_b
    neg-int v1, v10

    .line 335
    :goto_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 336
    .line 337
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzann;->zzd(I)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_c

    .line 342
    .line 343
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 344
    .line 345
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 346
    .line 347
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 348
    .line 349
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zzb([BI)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 354
    .line 355
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 356
    .line 357
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 358
    .line 359
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 360
    .line 361
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 362
    .line 363
    .line 364
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzaon;

    .line 365
    .line 366
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    .line 367
    .line 368
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 369
    .line 370
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaon;->zza(JLcom/google/android/gms/internal/ads/zzfp;)V

    .line 371
    .line 372
    .line 373
    :cond_c
    const/16 v1, 0xb2

    .line 374
    .line 375
    if-ne v9, v1, :cond_e

    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    const/4 v3, 0x2

    .line 382
    add-int/lit8 v4, v8, 0x2

    .line 383
    .line 384
    aget-byte v2, v2, v4

    .line 385
    .line 386
    const/4 v4, 0x1

    .line 387
    if-ne v2, v4, :cond_d

    .line 388
    .line 389
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 390
    .line 391
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzann;->zzc(I)V

    .line 392
    .line 393
    .line 394
    :cond_d
    const/16 v9, 0xb2

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_e
    const/4 v3, 0x2

    .line 398
    :goto_9
    if-eqz v9, :cond_11

    .line 399
    .line 400
    const/16 v1, 0xb3

    .line 401
    .line 402
    if-ne v9, v1, :cond_f

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_f
    const/16 v1, 0xb8

    .line 406
    .line 407
    if-ne v9, v1, :cond_10

    .line 408
    .line 409
    const/4 v1, 0x1

    .line 410
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzp:Z

    .line 411
    .line 412
    :cond_10
    const/4 v2, 0x1

    .line 413
    goto :goto_f

    .line 414
    :cond_11
    :goto_a
    sub-int v1, v6, v8

    .line 415
    .line 416
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzq:Z

    .line 417
    .line 418
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    if-eqz v2, :cond_12

    .line 424
    .line 425
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Z

    .line 426
    .line 427
    if-eqz v2, :cond_12

    .line 428
    .line 429
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    .line 430
    .line 431
    cmp-long v2, v10, v4

    .line 432
    .line 433
    if-eqz v2, :cond_12

    .line 434
    .line 435
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzp:Z

    .line 436
    .line 437
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzana;->zzi:J

    .line 438
    .line 439
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzana;->zzn:J

    .line 440
    .line 441
    sub-long/2addr v12, v14

    .line 442
    long-to-int v8, v12

    .line 443
    sub-int v24, v8, v1

    .line 444
    .line 445
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 446
    .line 447
    const/16 v26, 0x0

    .line 448
    .line 449
    move-object/from16 v20, v8

    .line 450
    .line 451
    move-wide/from16 v21, v10

    .line 452
    .line 453
    move/from16 v23, v2

    .line 454
    .line 455
    move/from16 v25, v1

    .line 456
    .line 457
    invoke-interface/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 458
    .line 459
    .line 460
    :cond_12
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Z

    .line 461
    .line 462
    if-eqz v2, :cond_14

    .line 463
    .line 464
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzq:Z

    .line 465
    .line 466
    if-eqz v2, :cond_13

    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_13
    const/4 v1, 0x0

    .line 470
    const/4 v2, 0x1

    .line 471
    goto :goto_d

    .line 472
    :cond_14
    :goto_b
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzana;->zzi:J

    .line 473
    .line 474
    int-to-long v1, v1

    .line 475
    sub-long/2addr v10, v1

    .line 476
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzana;->zzn:J

    .line 477
    .line 478
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 479
    .line 480
    cmp-long v8, v1, v4

    .line 481
    .line 482
    if-eqz v8, :cond_15

    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_15
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    .line 486
    .line 487
    cmp-long v8, v1, v4

    .line 488
    .line 489
    if-eqz v8, :cond_16

    .line 490
    .line 491
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 492
    .line 493
    add-long/2addr v1, v10

    .line 494
    goto :goto_c

    .line 495
    :cond_16
    move-wide v1, v4

    .line 496
    :goto_c
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    .line 497
    .line 498
    const/4 v1, 0x0

    .line 499
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzp:Z

    .line 500
    .line 501
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 502
    .line 503
    const/4 v2, 0x1

    .line 504
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Z

    .line 505
    .line 506
    :goto_d
    if-nez v9, :cond_17

    .line 507
    .line 508
    const/4 v14, 0x1

    .line 509
    goto :goto_e

    .line 510
    :cond_17
    const/4 v14, 0x0

    .line 511
    :goto_e
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzana;->zzq:Z

    .line 512
    .line 513
    :goto_f
    move-object/from16 v10, p1

    .line 514
    .line 515
    move/from16 v5, v19

    .line 516
    .line 517
    const/4 v2, 0x4

    .line 518
    const/4 v4, 0x3

    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :array_0
    .array-data 8
        0x55a849954e8db7efL    # 4.3518122963070325E104
        0x3a59e7eeef59fb71L    # 1.3079182344330372E-27
        0x46931497f96bf0b7L    # 9.674934487210319E31
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzb:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzaon;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzana;->zzp:Z

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzi:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzana;->zzn:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    .line 18
    .line 19
    long-to-int v5, v0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v1, p1

    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzg:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzf([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzamz;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamz;->zzb()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzi:J

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Z

    .line 24
    .line 25
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzo:J

    .line 33
    .line 34
    return-void
.end method
