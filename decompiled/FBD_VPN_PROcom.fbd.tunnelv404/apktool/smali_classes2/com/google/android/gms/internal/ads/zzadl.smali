.class public final Lcom/google/android/gms/internal/ads/zzadl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:F

.field public final zzi:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    .locals 0
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzc:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzd:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzadl;->zze:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzf:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzg:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzh:F

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzadl;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x15

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    and-int/lit8 v3, v3, 0x3

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    :goto_0
    if-ge v7, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const/4 v10, 0x0

    .line 37
    :goto_1
    if-ge v10, v9, :cond_0

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    add-int/lit8 v12, v11, 0x4

    .line 44
    .line 45
    add-int/2addr v8, v12

    .line 46
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 47
    .line 48
    .line 49
    add-int/2addr v10, v2

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_0
    add-int/2addr v7, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 57
    .line 58
    .line 59
    new-array v5, v8, [B

    .line 60
    .line 61
    const/4 v7, -0x1

    .line 62
    const/4 v9, 0x0

    .line 63
    const/high16 v10, 0x3f800000    # 1.0f

    .line 64
    .line 65
    move-object/from16 v22, v9

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v14, -0x1

    .line 70
    const/4 v15, -0x1

    .line 71
    const/16 v16, -0x1

    .line 72
    .line 73
    const/16 v17, -0x1

    .line 74
    .line 75
    const/16 v18, -0x1

    .line 76
    .line 77
    const/16 v19, -0x1

    .line 78
    .line 79
    const/16 v20, -0x1

    .line 80
    .line 81
    const/high16 v21, 0x3f800000    # 1.0f

    .line 82
    .line 83
    :goto_2
    if-ge v7, v4, :cond_4

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    and-int/lit8 v10, v10, 0x3f

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    const/4 v12, 0x0

    .line 96
    :goto_3
    if-ge v12, v11, :cond_3

    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgm;->zza:[B

    .line 103
    .line 104
    invoke-static {v2, v6, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v2, v9, 0x4

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-static {v1, v6, v5, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    add-int v1, v2, v13

    .line 121
    .line 122
    const/16 v2, 0x21

    .line 123
    .line 124
    if-ne v10, v2, :cond_2

    .line 125
    .line 126
    if-nez v12, :cond_2

    .line 127
    .line 128
    add-int/lit8 v9, v9, 0x6

    .line 129
    .line 130
    invoke-static {v5, v9, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zzc([BII)Lcom/google/android/gms/internal/ads/zzgj;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget v14, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzi:I

    .line 135
    .line 136
    iget v15, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzj:I

    .line 137
    .line 138
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzgj;->zze:I

    .line 139
    .line 140
    add-int/lit8 v16, v6, 0x8

    .line 141
    .line 142
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzf:I

    .line 143
    .line 144
    add-int/lit8 v17, v6, 0x8

    .line 145
    .line 146
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzl:I

    .line 147
    .line 148
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzm:I

    .line 149
    .line 150
    iget v12, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzn:I

    .line 151
    .line 152
    move/from16 v23, v1

    .line 153
    .line 154
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzk:F

    .line 155
    .line 156
    move/from16 v18, v1

    .line 157
    .line 158
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzgj;->zza:I

    .line 159
    .line 160
    move/from16 v30, v4

    .line 161
    .line 162
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzb:Z

    .line 163
    .line 164
    move/from16 v19, v6

    .line 165
    .line 166
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzc:I

    .line 167
    .line 168
    move/from16 v20, v9

    .line 169
    .line 170
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzd:I

    .line 171
    .line 172
    move/from16 v31, v10

    .line 173
    .line 174
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzg:[I

    .line 175
    .line 176
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzgj;->zzh:I

    .line 177
    .line 178
    move/from16 v24, v1

    .line 179
    .line 180
    move/from16 v25, v4

    .line 181
    .line 182
    move/from16 v26, v6

    .line 183
    .line 184
    move/from16 v27, v9

    .line 185
    .line 186
    move-object/from16 v28, v10

    .line 187
    .line 188
    move/from16 v29, v2

    .line 189
    .line 190
    invoke-static/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzem;->zzb(IZII[II)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v22

    .line 194
    move/from16 v21, v18

    .line 195
    .line 196
    move/from16 v18, v19

    .line 197
    .line 198
    move/from16 v19, v20

    .line 199
    .line 200
    move/from16 v20, v12

    .line 201
    .line 202
    const/4 v12, 0x0

    .line 203
    goto :goto_4

    .line 204
    :cond_2
    move/from16 v23, v1

    .line 205
    .line 206
    move/from16 v30, v4

    .line 207
    .line 208
    move/from16 v31, v10

    .line 209
    .line 210
    :goto_4
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 211
    .line 212
    .line 213
    const/4 v1, 0x1

    .line 214
    add-int/2addr v12, v1

    .line 215
    move/from16 v9, v23

    .line 216
    .line 217
    move/from16 v4, v30

    .line 218
    .line 219
    move/from16 v10, v31

    .line 220
    .line 221
    const/4 v1, 0x4

    .line 222
    const/4 v2, 0x1

    .line 223
    const/4 v6, 0x0

    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_3
    move/from16 v30, v4

    .line 227
    .line 228
    const/4 v1, 0x1

    .line 229
    add-int/2addr v7, v1

    .line 230
    const/4 v1, 0x4

    .line 231
    const/4 v2, 0x1

    .line 232
    const/4 v6, 0x0

    .line 233
    goto/16 :goto_2

    .line 234
    .line 235
    :cond_4
    if-nez v8, :cond_5

    .line 236
    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :goto_5
    move-object v12, v0

    .line 242
    goto :goto_6

    .line 243
    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_5

    .line 248
    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadl;

    .line 249
    .line 250
    const/4 v1, 0x1

    .line 251
    add-int/lit8 v13, v3, 0x1

    .line 252
    .line 253
    move-object v11, v0

    .line 254
    invoke-direct/range {v11 .. v22}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :goto_7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    const/4 v2, 0x5

    .line 261
    new-array v2, v2, [J

    .line 262
    .line 263
    fill-array-data v2, :array_0

    .line 264
    .line 265
    .line 266
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    throw v0

    .line 278
    nop

    .line 279
    :array_0
    .array-data 8
        -0x2747061cadfbe08aL
        0x37657d966b47add2L    # 7.709366219443259E-42
        0x46deddaba718d220L    # 2.504139343878827E33
        -0x465c51d7dbf2eca0L    # -4.851568522911318E-31
        0x1a26e5ae5bf2e726L
    .end array-data
.end method
