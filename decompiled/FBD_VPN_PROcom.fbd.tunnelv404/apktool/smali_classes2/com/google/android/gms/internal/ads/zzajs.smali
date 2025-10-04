.class final Lcom/google/android/gms/internal/ads/zzajs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzajy;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/ads/zzake;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzake;JJJJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmp-long v3, p2, v0

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    cmp-long v0, p4, p2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzd:Lcom/google/android/gms/internal/ads/zzake;

    .line 22
    .line 23
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:J

    .line 24
    .line 25
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    .line 26
    .line 27
    sub-long/2addr p4, p2

    .line 28
    cmp-long p1, p6, p4

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-eqz p10, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:J

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 42
    .line 43
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajy;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajy;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 49
    .line 50
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzajs;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    return-wide v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzajs;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:J

    return-wide v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzajs;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:J

    return-wide v0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzajs;)Lcom/google/android/gms/internal/ads/zzake;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzd:Lcom/google/android/gms/internal/ads/zzake;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzacv;)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const-wide/16 v6, -0x1

    .line 10
    .line 11
    if-eqz v2, :cond_b

    .line 12
    .line 13
    if-eq v2, v3, :cond_c

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v10, 0x3

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    if-eq v2, v10, :cond_9

    .line 20
    .line 21
    return-wide v6

    .line 22
    :cond_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:J

    .line 23
    .line 24
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:J

    .line 25
    .line 26
    cmp-long v13, v2, v11

    .line 27
    .line 28
    if-nez v13, :cond_1

    .line 29
    .line 30
    :goto_0
    move-wide v11, v6

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 38
    .line 39
    invoke-virtual {v13, v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;J)Z

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-nez v11, :cond_3

    .line 44
    .line 45
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:J

    .line 46
    .line 47
    cmp-long v13, v11, v2

    .line 48
    .line 49
    if-eqz v13, :cond_2

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_3
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 75
    .line 76
    invoke-virtual {v11, v1, v5}, Lcom/google/android/gms/internal/ads/zzajy;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Z)Z

    .line 77
    .line 78
    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 80
    .line 81
    .line 82
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    .line 83
    .line 84
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 85
    .line 86
    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    .line 87
    .line 88
    sub-long/2addr v11, v14

    .line 89
    iget v8, v13, Lcom/google/android/gms/internal/ads/zzajy;->zzd:I

    .line 90
    .line 91
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    .line 92
    .line 93
    add-int/2addr v8, v9

    .line 94
    const-wide/16 v16, 0x0

    .line 95
    .line 96
    cmp-long v9, v11, v16

    .line 97
    .line 98
    if-ltz v9, :cond_4

    .line 99
    .line 100
    const-wide/32 v16, 0x11940

    .line 101
    .line 102
    .line 103
    cmp-long v13, v11, v16

    .line 104
    .line 105
    if-gez v13, :cond_4

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    if-gez v9, :cond_5

    .line 109
    .line 110
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:J

    .line 111
    .line 112
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzl:J

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    int-to-long v2, v8

    .line 116
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 117
    .line 118
    .line 119
    move-result-wide v16

    .line 120
    add-long v2, v16, v2

    .line 121
    .line 122
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:J

    .line 123
    .line 124
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:J

    .line 125
    .line 126
    :goto_1
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:J

    .line 127
    .line 128
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:J

    .line 129
    .line 130
    sub-long v16, v2, v13

    .line 131
    .line 132
    const-wide/32 v18, 0x186a0

    .line 133
    .line 134
    .line 135
    cmp-long v15, v16, v18

    .line 136
    .line 137
    if-gez v15, :cond_6

    .line 138
    .line 139
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:J

    .line 140
    .line 141
    move-wide v11, v13

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    int-to-long v4, v8

    .line 144
    if-gtz v9, :cond_7

    .line 145
    .line 146
    const-wide/16 v8, 0x2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    const-wide/16 v8, 0x1

    .line 150
    .line 151
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 152
    .line 153
    .line 154
    move-result-wide v19

    .line 155
    mul-long v4, v4, v8

    .line 156
    .line 157
    sub-long v19, v19, v4

    .line 158
    .line 159
    mul-long v11, v11, v16

    .line 160
    .line 161
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzl:J

    .line 162
    .line 163
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:J

    .line 164
    .line 165
    sub-long/2addr v4, v8

    .line 166
    div-long/2addr v11, v4

    .line 167
    add-long v11, v11, v19

    .line 168
    .line 169
    add-long/2addr v2, v6

    .line 170
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 171
    .line 172
    .line 173
    move-result-wide v2

    .line 174
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 175
    .line 176
    .line 177
    move-result-wide v11

    .line 178
    :goto_3
    cmp-long v2, v11, v6

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    return-wide v11

    .line 183
    :cond_8
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 184
    .line 185
    :cond_9
    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 186
    .line 187
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;J)Z

    .line 188
    .line 189
    .line 190
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajy;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Z)Z

    .line 194
    .line 195
    .line 196
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 197
    .line 198
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    .line 199
    .line 200
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    .line 201
    .line 202
    cmp-long v5, v3, v8

    .line 203
    .line 204
    if-lez v5, :cond_a

    .line 205
    .line 206
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 207
    .line 208
    .line 209
    const/4 v1, 0x4

    .line 210
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 211
    .line 212
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:J

    .line 213
    .line 214
    const-wide/16 v4, 0x2

    .line 215
    .line 216
    add-long/2addr v1, v4

    .line 217
    neg-long v1, v1

    .line 218
    return-wide v1

    .line 219
    :cond_a
    const-wide/16 v4, 0x2

    .line 220
    .line 221
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzd:I

    .line 222
    .line 223
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    .line 224
    .line 225
    add-int/2addr v3, v2

    .line 226
    move-object v2, v1

    .line 227
    check-cast v2, Lcom/google/android/gms/internal/ads/zzack;

    .line 228
    .line 229
    const/4 v8, 0x0

    .line 230
    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 231
    .line 232
    .line 233
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:J

    .line 238
    .line 239
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 240
    .line 241
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    .line 242
    .line 243
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:J

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzg:J

    .line 251
    .line 252
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 253
    .line 254
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    .line 255
    .line 256
    const-wide/32 v10, -0xff1b

    .line 257
    .line 258
    .line 259
    add-long/2addr v8, v10

    .line 260
    cmp-long v2, v8, v4

    .line 261
    .line 262
    if-lez v2, :cond_c

    .line 263
    .line 264
    return-wide v8

    .line 265
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajy;->zza()V

    .line 268
    .line 269
    .line 270
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 271
    .line 272
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;J)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_f

    .line 277
    .line 278
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 279
    .line 280
    const/4 v4, 0x0

    .line 281
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzajy;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Z)Z

    .line 282
    .line 283
    .line 284
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 285
    .line 286
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzd:I

    .line 287
    .line 288
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    .line 289
    .line 290
    add-int/2addr v5, v2

    .line 291
    move-object v2, v1

    .line 292
    check-cast v2, Lcom/google/android/gms/internal/ads/zzack;

    .line 293
    .line 294
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 295
    .line 296
    .line 297
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 298
    .line 299
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    .line 300
    .line 301
    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 302
    .line 303
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzajy;->zza:I

    .line 304
    .line 305
    const/4 v9, 0x4

    .line 306
    and-int/2addr v8, v9

    .line 307
    if-eq v8, v9, :cond_e

    .line 308
    .line 309
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;J)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_e

    .line 314
    .line 315
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 316
    .line 317
    .line 318
    move-result-wide v8

    .line 319
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    .line 320
    .line 321
    cmp-long v2, v8, v10

    .line 322
    .line 323
    if-gez v2, :cond_e

    .line 324
    .line 325
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 326
    .line 327
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajy;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Z)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-eqz v2, :cond_e

    .line 332
    .line 333
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 334
    .line 335
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzd:I

    .line 336
    .line 337
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    .line 338
    .line 339
    add-int/2addr v8, v2

    .line 340
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzacy;->zze(Lcom/google/android/gms/internal/ads/zzacv;I)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-nez v2, :cond_d

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    .line 348
    .line 349
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_e
    :goto_6
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:J

    .line 353
    .line 354
    const/4 v1, 0x4

    .line 355
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 356
    .line 357
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzg:J

    .line 358
    .line 359
    return-wide v1

    .line 360
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    .line 361
    .line 362
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 363
    .line 364
    .line 365
    throw v1

    .line 366
    nop

    .line 367
    :array_0
    .array-data 8
        -0x2c37809031f5e96fL    # -4.088045522535349E95
        0x6a0538403dd6799eL    # 5.197649118507208E202
        0x6448ec8d90f6b2b9L    # 1.2328943229949347E175
        0x304c36e393f7007aL    # 4.873288019993156E-76
        -0x5449e9a9622cc5aaL    # -4.0392733970011805E-98
    .end array-data
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzadu;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-direct {v0, p0, v4}, Lcom/google/android/gms/internal/ads/zzajr;-><init>(Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzajq;)V

    return-object v0

    :cond_0
    return-object v4
.end method

.method public final zzg(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 20
    .line 21
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:J

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:J

    .line 24
    .line 25
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    .line 26
    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:J

    .line 30
    .line 31
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:J

    .line 32
    .line 33
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzl:J

    .line 34
    .line 35
    return-void
.end method
