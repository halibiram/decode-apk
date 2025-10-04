.class public final Lcom/google/android/gms/internal/ads/zzanl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamy;


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfo;

.field private zzd:Lcom/google/android/gms/internal/ads/zzaea;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzam;

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:Z

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Z

.field private zzq:J

.field private zzr:I

.field private zzs:J

.field private zzt:I

.field private zzu:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    .line 8
    const/16 v0, 0x400

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfo;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    array-length v1, p1

    .line 22
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Lcom/google/android/gms/internal/ads/zzfo;

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    .line 33
    .line 34
    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzfo;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfo;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzb(Lcom/google/android/gms/internal/ads/zzfo;Z)Lcom/google/android/gms/internal/ads/zzabr;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzabr;->zzc:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzu:Ljava/lang/String;

    .line 13
    .line 14
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzabr;->zza:I

    .line 15
    .line 16
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzr:I

    .line 17
    .line 18
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzabr;->zzb:I

    .line 19
    .line 20
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzt:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfo;->zza()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sub-int/2addr v0, p1

    .line 27
    return v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzfo;)J
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    const/4 v3, 0x7

    .line 6
    const/4 v4, 0x3

    .line 7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:Lcom/google/android/gms/internal/ads/zzaea;

    .line 8
    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-lez v5, :cond_1e

    .line 17
    .line 18
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    .line 19
    .line 20
    const/16 v6, 0x56

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    if-eqz v5, :cond_1d

    .line 24
    .line 25
    const/4 v8, 0x2

    .line 26
    const/4 v9, 0x0

    .line 27
    if-eq v5, v7, :cond_1b

    .line 28
    .line 29
    if-eq v5, v8, :cond_19

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 36
    .line 37
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 38
    .line 39
    sub-int/2addr v6, v8

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Lcom/google/android/gms/internal/ads/zzfo;

    .line 45
    .line 46
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfo;->zza:[B

    .line 47
    .line 48
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 49
    .line 50
    move-object/from16 v10, p1

    .line 51
    .line 52
    invoke-virtual {v10, v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 53
    .line 54
    .line 55
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 56
    .line 57
    add-int/2addr v6, v5

    .line 58
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 59
    .line 60
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 61
    .line 62
    if-ne v6, v5, :cond_0

    .line 63
    .line 64
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Lcom/google/android/gms/internal/ads/zzfo;

    .line 65
    .line 66
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 67
    .line 68
    .line 69
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Lcom/google/android/gms/internal/ads/zzfo;

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const/4 v8, 0x0

    .line 76
    if-nez v6, :cond_10

    .line 77
    .line 78
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzl:Z

    .line 79
    .line 80
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ne v6, v7, :cond_1

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v11, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move v11, v6

    .line 93
    const/4 v6, 0x0

    .line 94
    :goto_1
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzm:I

    .line 95
    .line 96
    if-nez v6, :cond_f

    .line 97
    .line 98
    if-ne v11, v7, :cond_2

    .line 99
    .line 100
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzanl;->zzg(Lcom/google/android/gms/internal/ads/zzfo;)J

    .line 101
    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_e

    .line 109
    .line 110
    const/4 v6, 0x6

    .line 111
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzn:I

    .line 116
    .line 117
    const/4 v12, 0x4

    .line 118
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    if-nez v13, :cond_d

    .line 127
    .line 128
    if-nez v14, :cond_d

    .line 129
    .line 130
    if-nez v11, :cond_3

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzc()I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(Lcom/google/android/gms/internal/ads/zzfo;)I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v13, v14, 0x7

    .line 144
    .line 145
    div-int/2addr v13, v2

    .line 146
    new-array v13, v13, [B

    .line 147
    .line 148
    invoke-virtual {v5, v13, v9, v14}, Lcom/google/android/gms/internal/ads/zzfo;->zzg([BII)V

    .line 149
    .line 150
    .line 151
    new-instance v14, Lcom/google/android/gms/internal/ads/zzak;

    .line 152
    .line 153
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzanl;->zze:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 159
    .line 160
    .line 161
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v1, v4, [J

    .line 164
    .line 165
    fill-array-data v1, :array_0

    .line 166
    .line 167
    .line 168
    invoke-direct {v15, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzu:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 181
    .line 182
    .line 183
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzt:I

    .line 184
    .line 185
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 186
    .line 187
    .line 188
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzr:I

    .line 189
    .line 190
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 191
    .line 192
    .line 193
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 210
    .line 211
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    if-nez v13, :cond_4

    .line 216
    .line 217
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 218
    .line 219
    iget v13, v1, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    .line 220
    .line 221
    int-to-long v13, v13

    .line 222
    const-wide/32 v16, 0x3d090000

    .line 223
    .line 224
    .line 225
    div-long v13, v16, v13

    .line 226
    .line 227
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzs:J

    .line 228
    .line 229
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:Lcom/google/android/gms/internal/ads/zzaea;

    .line 230
    .line 231
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzanl;->zzg(Lcom/google/android/gms/internal/ads/zzfo;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v13

    .line 239
    long-to-int v1, v13

    .line 240
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(Lcom/google/android/gms/internal/ads/zzfo;)I

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    sub-int/2addr v1, v13

    .line 245
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 246
    .line 247
    .line 248
    :cond_4
    :goto_2
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzo:I

    .line 253
    .line 254
    if-eqz v1, :cond_9

    .line 255
    .line 256
    if-eq v1, v7, :cond_8

    .line 257
    .line 258
    if-eq v1, v4, :cond_7

    .line 259
    .line 260
    if-eq v1, v12, :cond_7

    .line 261
    .line 262
    const/4 v12, 0x5

    .line 263
    if-eq v1, v12, :cond_7

    .line 264
    .line 265
    if-eq v1, v6, :cond_6

    .line 266
    .line 267
    if-ne v1, v3, :cond_5

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 271
    .line 272
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 273
    .line 274
    .line 275
    throw v1

    .line 276
    :cond_6
    :goto_3
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_8
    const/16 v1, 0x9

    .line 285
    .line 286
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_9
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 291
    .line 292
    .line 293
    :goto_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzp:Z

    .line 298
    .line 299
    const-wide/16 v12, 0x0

    .line 300
    .line 301
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzq:J

    .line 302
    .line 303
    if-eqz v1, :cond_c

    .line 304
    .line 305
    if-eq v11, v7, :cond_b

    .line 306
    .line 307
    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzq:J

    .line 312
    .line 313
    shl-long/2addr v11, v2

    .line 314
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    int-to-long v13, v6

    .line 319
    add-long/2addr v11, v13

    .line 320
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzq:J

    .line 321
    .line 322
    if-nez v1, :cond_a

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_b
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzanl;->zzg(Lcom/google/android/gms/internal/ads/zzfo;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v11

    .line 329
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzq:J

    .line 330
    .line 331
    :cond_c
    :goto_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_11

    .line 336
    .line 337
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_d
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    throw v1

    .line 346
    :cond_e
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    throw v1

    .line 351
    :cond_f
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    throw v1

    .line 356
    :cond_10
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzl:Z

    .line 357
    .line 358
    if-nez v1, :cond_11

    .line 359
    .line 360
    goto/16 :goto_9

    .line 361
    .line 362
    :cond_11
    :goto_6
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzm:I

    .line 363
    .line 364
    if-nez v1, :cond_18

    .line 365
    .line 366
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzn:I

    .line 367
    .line 368
    if-nez v1, :cond_17

    .line 369
    .line 370
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzo:I

    .line 371
    .line 372
    if-nez v1, :cond_16

    .line 373
    .line 374
    const/4 v1, 0x0

    .line 375
    :cond_12
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    add-int/2addr v1, v6

    .line 380
    const/16 v8, 0xff

    .line 381
    .line 382
    if-eq v6, v8, :cond_12

    .line 383
    .line 384
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzc()I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    and-int/lit8 v8, v6, 0x7

    .line 389
    .line 390
    if-nez v8, :cond_13

    .line 391
    .line 392
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 393
    .line 394
    shr-int/2addr v6, v4

    .line 395
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_13
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 400
    .line 401
    mul-int/lit8 v8, v1, 0x8

    .line 402
    .line 403
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-virtual {v5, v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzg([BII)V

    .line 408
    .line 409
    .line 410
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 411
    .line 412
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 413
    .line 414
    .line 415
    :goto_7
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:Lcom/google/android/gms/internal/ads/zzaea;

    .line 416
    .line 417
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 418
    .line 419
    invoke-interface {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 420
    .line 421
    .line 422
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    .line 423
    .line 424
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    cmp-long v6, v11, v13

    .line 430
    .line 431
    if-eqz v6, :cond_14

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_14
    const/4 v7, 0x0

    .line 435
    :goto_8
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 436
    .line 437
    .line 438
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:Lcom/google/android/gms/internal/ads/zzaea;

    .line 439
    .line 440
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    .line 441
    .line 442
    const/16 v21, 0x0

    .line 443
    .line 444
    const/16 v22, 0x0

    .line 445
    .line 446
    const/16 v19, 0x1

    .line 447
    .line 448
    move-object/from16 v16, v6

    .line 449
    .line 450
    move-wide/from16 v17, v7

    .line 451
    .line 452
    move/from16 v20, v1

    .line 453
    .line 454
    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 455
    .line 456
    .line 457
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    .line 458
    .line 459
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzs:J

    .line 460
    .line 461
    add-long/2addr v6, v11

    .line 462
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    .line 463
    .line 464
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzp:Z

    .line 465
    .line 466
    if-eqz v1, :cond_15

    .line 467
    .line 468
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzq:J

    .line 469
    .line 470
    long-to-int v1, v6

    .line 471
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 472
    .line 473
    .line 474
    :cond_15
    :goto_9
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    .line 475
    .line 476
    goto/16 :goto_0

    .line 477
    .line 478
    :cond_16
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    throw v1

    .line 483
    :cond_17
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    throw v1

    .line 488
    :cond_18
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    throw v1

    .line 493
    :cond_19
    move-object/from16 v10, p1

    .line 494
    .line 495
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 496
    .line 497
    and-int/lit16 v1, v1, -0xe1

    .line 498
    .line 499
    shl-int/2addr v1, v2

    .line 500
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    or-int/2addr v1, v5

    .line 505
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 506
    .line 507
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 508
    .line 509
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    array-length v6, v6

    .line 514
    if-le v1, v6, :cond_1a

    .line 515
    .line 516
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 517
    .line 518
    .line 519
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:Lcom/google/android/gms/internal/ads/zzfo;

    .line 520
    .line 521
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 522
    .line 523
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    array-length v6, v5

    .line 528
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzj([BI)V

    .line 529
    .line 530
    .line 531
    :cond_1a
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:I

    .line 532
    .line 533
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    .line 534
    .line 535
    goto/16 :goto_0

    .line 536
    .line 537
    :cond_1b
    move-object/from16 v10, p1

    .line 538
    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    const/16 v5, 0xe0

    .line 544
    .line 545
    and-int/lit16 v7, v1, 0xe0

    .line 546
    .line 547
    if-ne v7, v5, :cond_1c

    .line 548
    .line 549
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 550
    .line 551
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    .line 552
    .line 553
    goto/16 :goto_0

    .line 554
    .line 555
    :cond_1c
    if-eq v1, v6, :cond_0

    .line 556
    .line 557
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_1d
    move-object/from16 v10, p1

    .line 562
    .line 563
    const/16 v5, 0xe0

    .line 564
    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-ne v1, v6, :cond_0

    .line 570
    .line 571
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :cond_1e
    return-void

    .line 576
    nop

    .line 577
    :array_0
    .array-data 8
        -0x23a16c777c572793L    # -8.889616075512189E136
        0x43c402aea96bcaf6L    # 2.8838137467862989E18
        0x6f1e856775e9c17aL    # 1.8075781009204172E227
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zza()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:Lcom/google/android/gms/internal/ads/zzaea;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzb()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zze:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzl:Z

    return-void
.end method
