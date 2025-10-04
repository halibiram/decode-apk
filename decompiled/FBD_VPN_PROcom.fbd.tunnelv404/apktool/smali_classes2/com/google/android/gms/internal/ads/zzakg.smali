.class final Lcom/google/android/gms/internal/ads/zzakg;
.super Lcom/google/android/gms/internal/ads/zzake;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzakf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzaef;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzaed;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzake;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)J
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakf;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    shr-int/2addr v0, v2

    .line 27
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzakf;->zze:I

    .line 28
    .line 29
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzakf;->zzd:[Lcom/google/android/gms/internal/ads/zzaee;

    .line 30
    .line 31
    const/16 v6, 0xff

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    rsub-int/lit8 v4, v4, 0x8

    .line 36
    .line 37
    ushr-int v4, v6, v4

    .line 38
    .line 39
    and-int/2addr v0, v4

    .line 40
    aget-object v0, v5, v0

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaee;->zza:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzakf;->zza:Lcom/google/android/gms/internal/ads/zzaef;

    .line 47
    .line 48
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzakf;->zza:Lcom/google/android/gms/internal/ads/zzaef;

    .line 52
    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:I

    .line 54
    .line 55
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzc:Z

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzb:I

    .line 60
    .line 61
    add-int/2addr v1, v0

    .line 62
    div-int/lit8 v1, v1, 0x4

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzc()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    add-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    if-ge v3, v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/lit8 v4, v4, 0x4

    .line 85
    .line 86
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    array-length v4, v3

    .line 91
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    add-int/lit8 v3, v3, 0x4

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    int-to-long v3, v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    add-int/lit8 v5, v5, -0x4

    .line 114
    .line 115
    const-wide/16 v8, 0xff

    .line 116
    .line 117
    and-long v10, v3, v8

    .line 118
    .line 119
    long-to-int v6, v10

    .line 120
    int-to-byte v6, v6

    .line 121
    aput-byte v6, v1, v5

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    add-int/lit8 v5, v5, -0x3

    .line 128
    .line 129
    ushr-long v6, v3, v7

    .line 130
    .line 131
    and-long/2addr v6, v8

    .line 132
    long-to-int v7, v6

    .line 133
    int-to-byte v6, v7

    .line 134
    aput-byte v6, v1, v5

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    add-int/lit8 v5, v5, -0x2

    .line 141
    .line 142
    const/16 v6, 0x10

    .line 143
    .line 144
    ushr-long v6, v3, v6

    .line 145
    .line 146
    and-long/2addr v6, v8

    .line 147
    long-to-int v7, v6

    .line 148
    int-to-byte v6, v7

    .line 149
    aput-byte v6, v1, v5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    add-int/lit8 p1, p1, -0x1

    .line 156
    .line 157
    const/16 v5, 0x18

    .line 158
    .line 159
    ushr-long v5, v3, v5

    .line 160
    .line 161
    and-long/2addr v5, v8

    .line 162
    long-to-int v6, v5

    .line 163
    int-to-byte v5, v6

    .line 164
    aput-byte v5, v1, p1

    .line 165
    .line 166
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzc:Z

    .line 167
    .line 168
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzb:I

    .line 169
    .line 170
    return-wide v3
.end method

.method public final zzb(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzake;->zzb(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakf;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzd:Lcom/google/android/gms/internal/ads/zzaef;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zze:Lcom/google/android/gms/internal/ads/zzaed;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzb:I

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzc:Z

    .line 17
    .line 18
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfp;JLcom/google/android/gms/internal/ads/zzakb;)Z
    .locals 26
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakf;

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    if-eqz v8, :cond_0

    .line 14
    .line 15
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return v9

    .line 21
    :cond_0
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzakg;->zzd:Lcom/google/android/gms/internal/ads/zzaef;

    .line 22
    .line 23
    const/4 v8, 0x4

    .line 24
    if-nez v11, :cond_5

    .line 25
    .line 26
    invoke-static {v7, v1, v9}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(ILcom/google/android/gms/internal/ads/zzfp;Z)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzj()I

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzj()I

    .line 38
    .line 39
    .line 40
    move-result v15

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-gtz v5, :cond_1

    .line 46
    .line 47
    const/16 v16, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move/from16 v16, v5

    .line 51
    .line 52
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-gtz v5, :cond_2

    .line 57
    .line 58
    const/16 v17, -0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move/from16 v17, v5

    .line 62
    .line 63
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-gtz v5, :cond_3

    .line 68
    .line 69
    const/16 v18, -0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move/from16 v18, v5

    .line 73
    .line 74
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    and-int/lit8 v5, v3, 0xf

    .line 79
    .line 80
    int-to-double v5, v5

    .line 81
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 82
    .line 83
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    double-to-int v5, v5

    .line 88
    and-int/lit16 v3, v3, 0xf0

    .line 89
    .line 90
    shr-int/2addr v3, v8

    .line 91
    int-to-double v9, v3

    .line 92
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    double-to-int v3, v8

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    and-int/2addr v6, v7

    .line 102
    if-eq v7, v6, :cond_4

    .line 103
    .line 104
    const/16 v21, 0x0

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    const/16 v21, 0x1

    .line 108
    .line 109
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 118
    .line 119
    .line 120
    move-result-object v22

    .line 121
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaef;

    .line 122
    .line 123
    move-object v12, v1

    .line 124
    move/from16 v19, v5

    .line 125
    .line 126
    move/from16 v20, v3

    .line 127
    .line 128
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(IIIIIIIIZ[B)V

    .line 129
    .line 130
    .line 131
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakg;->zzd:Lcom/google/android/gms/internal/ads/zzaef;

    .line 132
    .line 133
    :goto_4
    const/4 v10, 0x0

    .line 134
    goto/16 :goto_22

    .line 135
    .line 136
    :cond_5
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzakg;->zze:Lcom/google/android/gms/internal/ads/zzaed;

    .line 137
    .line 138
    if-nez v12, :cond_6

    .line 139
    .line 140
    invoke-static {v1, v7, v7}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Lcom/google/android/gms/internal/ads/zzfp;ZZ)Lcom/google/android/gms/internal/ads/zzaed;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakg;->zze:Lcom/google/android/gms/internal/ads/zzaed;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    new-array v13, v9, [B

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    const/4 v14, 0x0

    .line 162
    invoke-static {v9, v14, v13, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    .line 164
    .line 165
    iget v9, v11, Lcom/google/android/gms/internal/ads/zzaef;->zza:I

    .line 166
    .line 167
    const/4 v10, 0x5

    .line 168
    invoke-static {v10, v1, v14}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(ILcom/google/android/gms/internal/ads/zzfp;Z)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    add-int/2addr v15, v7

    .line 176
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaec;

    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-direct {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;-><init>([B)V

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    mul-int/lit8 v1, v1, 0x8

    .line 190
    .line 191
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 192
    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    :goto_5
    const/16 v3, 0x18

    .line 196
    .line 197
    const/16 v5, 0x10

    .line 198
    .line 199
    if-ge v1, v15, :cond_11

    .line 200
    .line 201
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    const v4, 0x564342

    .line 206
    .line 207
    .line 208
    if-ne v6, v4, :cond_10

    .line 209
    .line 210
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-nez v5, :cond_9

    .line 223
    .line 224
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    const/4 v6, 0x0

    .line 229
    :goto_6
    if-ge v6, v3, :cond_a

    .line 230
    .line 231
    if-eqz v5, :cond_7

    .line 232
    .line 233
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 234
    .line 235
    .line 236
    move-result v20

    .line 237
    if-eqz v20, :cond_8

    .line 238
    .line 239
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_7
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 244
    .line 245
    .line 246
    :cond_8
    :goto_7
    add-int/2addr v6, v7

    .line 247
    goto :goto_6

    .line 248
    :cond_9
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 249
    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    :goto_8
    if-ge v5, v3, :cond_a

    .line 253
    .line 254
    sub-int v6, v3, v5

    .line 255
    .line 256
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(I)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    add-int/2addr v5, v6

    .line 265
    goto :goto_8

    .line 266
    :cond_a
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    const/4 v6, 0x2

    .line 271
    if-gt v5, v6, :cond_f

    .line 272
    .line 273
    if-eq v5, v7, :cond_c

    .line 274
    .line 275
    if-ne v5, v6, :cond_b

    .line 276
    .line 277
    const/4 v5, 0x2

    .line 278
    goto :goto_9

    .line 279
    :cond_b
    move/from16 v21, v9

    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_c
    :goto_9
    const/16 v6, 0x20

    .line 283
    .line 284
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    add-int/2addr v6, v7

    .line 295
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 296
    .line 297
    .line 298
    if-ne v5, v7, :cond_e

    .line 299
    .line 300
    if-eqz v4, :cond_d

    .line 301
    .line 302
    move/from16 v21, v9

    .line 303
    .line 304
    int-to-long v8, v3

    .line 305
    int-to-long v3, v4

    .line 306
    long-to-double v3, v3

    .line 307
    long-to-double v8, v8

    .line 308
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 309
    .line 310
    div-double v3, v22, v3

    .line 311
    .line 312
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 313
    .line 314
    .line 315
    move-result-wide v3

    .line 316
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 317
    .line 318
    .line 319
    move-result-wide v3

    .line 320
    double-to-long v3, v3

    .line 321
    goto :goto_a

    .line 322
    :cond_d
    move/from16 v21, v9

    .line 323
    .line 324
    const-wide/16 v3, 0x0

    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_e
    move/from16 v21, v9

    .line 328
    .line 329
    int-to-long v4, v4

    .line 330
    int-to-long v8, v3

    .line 331
    mul-long v3, v8, v4

    .line 332
    .line 333
    :goto_a
    int-to-long v5, v6

    .line 334
    mul-long v3, v3, v5

    .line 335
    .line 336
    long-to-int v4, v3

    .line 337
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 338
    .line 339
    .line 340
    :goto_b
    add-int/2addr v1, v7

    .line 341
    move/from16 v9, v21

    .line 342
    .line 343
    const/16 v5, 0x8

    .line 344
    .line 345
    const/4 v8, 0x4

    .line 346
    goto/16 :goto_5

    .line 347
    .line 348
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 354
    .line 355
    const/4 v3, 0x7

    .line 356
    new-array v3, v3, [J

    .line 357
    .line 358
    fill-array-data v3, :array_0

    .line 359
    .line 360
    .line 361
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    const/4 v2, 0x0

    .line 379
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    throw v1

    .line 384
    :cond_10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zza()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 394
    .line 395
    const/16 v4, 0x8

    .line 396
    .line 397
    new-array v4, v4, [J

    .line 398
    .line 399
    fill-array-data v4, :array_1

    .line 400
    .line 401
    .line 402
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const/4 v2, 0x0

    .line 420
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    throw v1

    .line 425
    :cond_11
    move/from16 v21, v9

    .line 426
    .line 427
    const/4 v1, 0x6

    .line 428
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    add-int/2addr v4, v7

    .line 433
    const/4 v6, 0x0

    .line 434
    :goto_c
    if-ge v6, v4, :cond_13

    .line 435
    .line 436
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-nez v8, :cond_12

    .line 441
    .line 442
    add-int/2addr v6, v7

    .line 443
    goto :goto_c

    .line 444
    :cond_12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 445
    .line 446
    const/16 v2, 0x8

    .line 447
    .line 448
    new-array v2, v2, [J

    .line 449
    .line 450
    fill-array-data v2, :array_2

    .line 451
    .line 452
    .line 453
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    const/4 v2, 0x0

    .line 461
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    throw v1

    .line 466
    :cond_13
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    add-int/2addr v4, v7

    .line 471
    const/4 v6, 0x0

    .line 472
    :goto_d
    if-ge v6, v4, :cond_1d

    .line 473
    .line 474
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    if-eqz v8, :cond_1b

    .line 479
    .line 480
    if-ne v8, v7, :cond_1a

    .line 481
    .line 482
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    new-array v9, v8, [I

    .line 487
    .line 488
    const/4 v10, -0x1

    .line 489
    const/4 v15, 0x0

    .line 490
    :goto_e
    if-ge v15, v8, :cond_15

    .line 491
    .line 492
    const/4 v3, 0x4

    .line 493
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    aput v1, v9, v15

    .line 498
    .line 499
    if-le v1, v10, :cond_14

    .line 500
    .line 501
    move v10, v1

    .line 502
    :cond_14
    add-int/2addr v15, v7

    .line 503
    const/4 v1, 0x6

    .line 504
    const/16 v3, 0x18

    .line 505
    .line 506
    goto :goto_e

    .line 507
    :cond_15
    add-int/2addr v10, v7

    .line 508
    new-array v1, v10, [I

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    :goto_f
    if-ge v3, v10, :cond_18

    .line 512
    .line 513
    const/4 v15, 0x3

    .line 514
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 515
    .line 516
    .line 517
    move-result v24

    .line 518
    add-int/lit8 v24, v24, 0x1

    .line 519
    .line 520
    aput v24, v1, v3

    .line 521
    .line 522
    const/4 v15, 0x2

    .line 523
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 524
    .line 525
    .line 526
    move-result v24

    .line 527
    if-lez v24, :cond_16

    .line 528
    .line 529
    const/16 v15, 0x8

    .line 530
    .line 531
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 532
    .line 533
    .line 534
    :goto_10
    move/from16 v25, v4

    .line 535
    .line 536
    const/4 v5, 0x0

    .line 537
    goto :goto_11

    .line 538
    :cond_16
    const/16 v15, 0x8

    .line 539
    .line 540
    goto :goto_10

    .line 541
    :goto_11
    shl-int v4, v7, v24

    .line 542
    .line 543
    if-ge v5, v4, :cond_17

    .line 544
    .line 545
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 546
    .line 547
    .line 548
    add-int/2addr v5, v7

    .line 549
    const/16 v15, 0x8

    .line 550
    .line 551
    goto :goto_11

    .line 552
    :cond_17
    add-int/2addr v3, v7

    .line 553
    move/from16 v4, v25

    .line 554
    .line 555
    const/16 v5, 0x10

    .line 556
    .line 557
    goto :goto_f

    .line 558
    :cond_18
    move/from16 v25, v4

    .line 559
    .line 560
    const/4 v3, 0x2

    .line 561
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 562
    .line 563
    .line 564
    const/4 v3, 0x4

    .line 565
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    const/4 v3, 0x0

    .line 570
    const/4 v5, 0x0

    .line 571
    const/4 v10, 0x0

    .line 572
    :goto_12
    if-ge v3, v8, :cond_1c

    .line 573
    .line 574
    aget v15, v9, v3

    .line 575
    .line 576
    aget v15, v1, v15

    .line 577
    .line 578
    add-int/2addr v5, v15

    .line 579
    :goto_13
    if-ge v10, v5, :cond_19

    .line 580
    .line 581
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 582
    .line 583
    .line 584
    add-int/2addr v10, v7

    .line 585
    goto :goto_13

    .line 586
    :cond_19
    add-int/2addr v3, v7

    .line 587
    goto :goto_12

    .line 588
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .line 592
    .line 593
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 594
    .line 595
    const/4 v3, 0x7

    .line 596
    new-array v3, v3, [J

    .line 597
    .line 598
    fill-array-data v3, :array_3

    .line 599
    .line 600
    .line 601
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    const/4 v2, 0x0

    .line 619
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    throw v1

    .line 624
    :cond_1b
    move/from16 v25, v4

    .line 625
    .line 626
    const/16 v1, 0x8

    .line 627
    .line 628
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 629
    .line 630
    .line 631
    const/16 v3, 0x10

    .line 632
    .line 633
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 637
    .line 638
    .line 639
    const/4 v3, 0x6

    .line 640
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 644
    .line 645
    .line 646
    const/4 v3, 0x4

    .line 647
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    add-int/2addr v4, v7

    .line 652
    const/4 v3, 0x0

    .line 653
    :goto_14
    if-ge v3, v4, :cond_1c

    .line 654
    .line 655
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 656
    .line 657
    .line 658
    add-int/2addr v3, v7

    .line 659
    const/16 v1, 0x8

    .line 660
    .line 661
    goto :goto_14

    .line 662
    :cond_1c
    add-int/2addr v6, v7

    .line 663
    move/from16 v4, v25

    .line 664
    .line 665
    const/4 v1, 0x6

    .line 666
    const/16 v3, 0x18

    .line 667
    .line 668
    const/16 v5, 0x10

    .line 669
    .line 670
    const/4 v10, 0x5

    .line 671
    goto/16 :goto_d

    .line 672
    .line 673
    :cond_1d
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 674
    .line 675
    .line 676
    move-result v3

    .line 677
    add-int/2addr v3, v7

    .line 678
    const/4 v4, 0x0

    .line 679
    :goto_15
    if-ge v4, v3, :cond_24

    .line 680
    .line 681
    const/16 v5, 0x10

    .line 682
    .line 683
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 684
    .line 685
    .line 686
    move-result v6

    .line 687
    const/4 v5, 0x2

    .line 688
    if-gt v6, v5, :cond_23

    .line 689
    .line 690
    const/16 v5, 0x18

    .line 691
    .line 692
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 702
    .line 703
    .line 704
    move-result v6

    .line 705
    add-int/2addr v6, v7

    .line 706
    const/16 v1, 0x8

    .line 707
    .line 708
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 709
    .line 710
    .line 711
    new-array v8, v6, [I

    .line 712
    .line 713
    const/4 v9, 0x0

    .line 714
    :goto_16
    if-ge v9, v6, :cond_1f

    .line 715
    .line 716
    const/4 v10, 0x3

    .line 717
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 718
    .line 719
    .line 720
    move-result v15

    .line 721
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 722
    .line 723
    .line 724
    move-result v10

    .line 725
    if-eqz v10, :cond_1e

    .line 726
    .line 727
    const/4 v10, 0x5

    .line 728
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 729
    .line 730
    .line 731
    move-result v18

    .line 732
    goto :goto_17

    .line 733
    :cond_1e
    const/4 v10, 0x5

    .line 734
    const/16 v18, 0x0

    .line 735
    .line 736
    :goto_17
    mul-int/lit8 v18, v18, 0x8

    .line 737
    .line 738
    add-int v18, v18, v15

    .line 739
    .line 740
    aput v18, v8, v9

    .line 741
    .line 742
    add-int/2addr v9, v7

    .line 743
    goto :goto_16

    .line 744
    :cond_1f
    const/4 v10, 0x5

    .line 745
    const/4 v9, 0x0

    .line 746
    :goto_18
    if-ge v9, v6, :cond_22

    .line 747
    .line 748
    const/4 v15, 0x0

    .line 749
    :goto_19
    if-ge v15, v1, :cond_21

    .line 750
    .line 751
    aget v18, v8, v9

    .line 752
    .line 753
    shl-int v22, v7, v15

    .line 754
    .line 755
    and-int v18, v18, v22

    .line 756
    .line 757
    if-eqz v18, :cond_20

    .line 758
    .line 759
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 760
    .line 761
    .line 762
    :cond_20
    add-int/2addr v15, v7

    .line 763
    const/16 v1, 0x8

    .line 764
    .line 765
    goto :goto_19

    .line 766
    :cond_21
    add-int/2addr v9, v7

    .line 767
    const/16 v1, 0x8

    .line 768
    .line 769
    goto :goto_18

    .line 770
    :cond_22
    add-int/2addr v4, v7

    .line 771
    const/4 v1, 0x6

    .line 772
    goto :goto_15

    .line 773
    :cond_23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 774
    .line 775
    const/4 v2, 0x7

    .line 776
    new-array v2, v2, [J

    .line 777
    .line 778
    fill-array-data v2, :array_4

    .line 779
    .line 780
    .line 781
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    const/4 v2, 0x0

    .line 789
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    throw v1

    .line 794
    :cond_24
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    add-int/2addr v3, v7

    .line 799
    const/4 v1, 0x0

    .line 800
    :goto_1a
    if-ge v1, v3, :cond_2c

    .line 801
    .line 802
    const/16 v4, 0x10

    .line 803
    .line 804
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 805
    .line 806
    .line 807
    move-result v5

    .line 808
    if-eqz v5, :cond_25

    .line 809
    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    .line 811
    .line 812
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    .line 814
    .line 815
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 816
    .line 817
    const/4 v8, 0x7

    .line 818
    new-array v9, v8, [J

    .line 819
    .line 820
    fill-array-data v9, :array_5

    .line 821
    .line 822
    .line 823
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 824
    .line 825
    .line 826
    invoke-static {v6, v4, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 831
    .line 832
    const/4 v6, 0x3

    .line 833
    new-array v8, v6, [J

    .line 834
    .line 835
    fill-array-data v8, :array_6

    .line 836
    .line 837
    .line 838
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzff;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    move/from16 v6, v21

    .line 849
    .line 850
    const/4 v4, 0x2

    .line 851
    const/4 v8, -0x1

    .line 852
    const/4 v10, 0x4

    .line 853
    goto :goto_20

    .line 854
    :cond_25
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    if-eqz v4, :cond_26

    .line 859
    .line 860
    const/4 v4, 0x4

    .line 861
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 862
    .line 863
    .line 864
    move-result v5

    .line 865
    add-int/2addr v5, v7

    .line 866
    goto :goto_1b

    .line 867
    :cond_26
    const/4 v5, 0x1

    .line 868
    :goto_1b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 869
    .line 870
    .line 871
    move-result v4

    .line 872
    if-eqz v4, :cond_27

    .line 873
    .line 874
    const/16 v4, 0x8

    .line 875
    .line 876
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 877
    .line 878
    .line 879
    move-result v6

    .line 880
    add-int/2addr v6, v7

    .line 881
    const/4 v4, 0x0

    .line 882
    :goto_1c
    if-ge v4, v6, :cond_27

    .line 883
    .line 884
    const/4 v8, -0x1

    .line 885
    add-int/lit8 v9, v21, -0x1

    .line 886
    .line 887
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(I)I

    .line 888
    .line 889
    .line 890
    move-result v10

    .line 891
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 892
    .line 893
    .line 894
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(I)I

    .line 895
    .line 896
    .line 897
    move-result v9

    .line 898
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 899
    .line 900
    .line 901
    add-int/2addr v4, v7

    .line 902
    goto :goto_1c

    .line 903
    :cond_27
    const/4 v8, -0x1

    .line 904
    const/4 v4, 0x2

    .line 905
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 906
    .line 907
    .line 908
    move-result v6

    .line 909
    if-nez v6, :cond_2b

    .line 910
    .line 911
    if-le v5, v7, :cond_29

    .line 912
    .line 913
    move/from16 v6, v21

    .line 914
    .line 915
    const/4 v9, 0x0

    .line 916
    :goto_1d
    if-ge v9, v6, :cond_28

    .line 917
    .line 918
    const/4 v10, 0x4

    .line 919
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 920
    .line 921
    .line 922
    add-int/2addr v9, v7

    .line 923
    goto :goto_1d

    .line 924
    :cond_28
    :goto_1e
    const/4 v10, 0x4

    .line 925
    const/4 v9, 0x0

    .line 926
    goto :goto_1f

    .line 927
    :cond_29
    move/from16 v6, v21

    .line 928
    .line 929
    goto :goto_1e

    .line 930
    :goto_1f
    if-ge v9, v5, :cond_2a

    .line 931
    .line 932
    const/16 v15, 0x8

    .line 933
    .line 934
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(I)V

    .line 941
    .line 942
    .line 943
    add-int/2addr v9, v7

    .line 944
    goto :goto_1f

    .line 945
    :cond_2a
    :goto_20
    add-int/2addr v1, v7

    .line 946
    move/from16 v21, v6

    .line 947
    .line 948
    goto/16 :goto_1a

    .line 949
    .line 950
    :cond_2b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 951
    .line 952
    const/16 v2, 0x9

    .line 953
    .line 954
    new-array v2, v2, [J

    .line 955
    .line 956
    fill-array-data v2, :array_7

    .line 957
    .line 958
    .line 959
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    const/4 v2, 0x0

    .line 967
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    throw v1

    .line 972
    :cond_2c
    const/4 v1, 0x6

    .line 973
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    add-int/lit8 v3, v1, 0x1

    .line 978
    .line 979
    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzaee;

    .line 980
    .line 981
    const/4 v9, 0x0

    .line 982
    :goto_21
    if-ge v9, v3, :cond_2d

    .line 983
    .line 984
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 985
    .line 986
    .line 987
    move-result v5

    .line 988
    const/16 v6, 0x10

    .line 989
    .line 990
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 991
    .line 992
    .line 993
    move-result v8

    .line 994
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 995
    .line 996
    .line 997
    move-result v10

    .line 998
    const/16 v15, 0x8

    .line 999
    .line 1000
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v6

    .line 1004
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaee;

    .line 1005
    .line 1006
    invoke-direct {v15, v5, v8, v10, v6}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(ZIII)V

    .line 1007
    .line 1008
    .line 1009
    aput-object v15, v4, v9

    .line 1010
    .line 1011
    add-int/2addr v9, v7

    .line 1012
    goto :goto_21

    .line 1013
    :cond_2d
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaec;->zzd()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    if-eqz v3, :cond_2f

    .line 1018
    .line 1019
    new-instance v3, Lcom/google/android/gms/internal/ads/zzakf;

    .line 1020
    .line 1021
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(I)I

    .line 1022
    .line 1023
    .line 1024
    move-result v15

    .line 1025
    move-object v10, v3

    .line 1026
    move-object v14, v4

    .line 1027
    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzaed;[B[Lcom/google/android/gms/internal/ads/zzaee;I)V

    .line 1028
    .line 1029
    .line 1030
    :goto_22
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakf;

    .line 1031
    .line 1032
    if-nez v10, :cond_2e

    .line 1033
    .line 1034
    return v7

    .line 1035
    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    .line 1036
    .line 1037
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzakf;->zza:Lcom/google/android/gms/internal/ads/zzaef;

    .line 1041
    .line 1042
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaef;->zzg:[B

    .line 1043
    .line 1044
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzakf;->zzc:[B

    .line 1048
    .line 1049
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .line 1051
    .line 1052
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzakf;->zzb:Lcom/google/android/gms/internal/ads/zzaed;

    .line 1053
    .line 1054
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaed;->zzb:[Ljava/lang/String;

    .line 1055
    .line 1056
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgaa;->zzk([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v4

    .line 1060
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzby;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v4

    .line 1064
    new-instance v5, Lcom/google/android/gms/internal/ads/zzak;

    .line 1065
    .line 1066
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 1067
    .line 1068
    .line 1069
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 1070
    .line 1071
    const/4 v8, 0x3

    .line 1072
    new-array v8, v8, [J

    .line 1073
    .line 1074
    fill-array-data v8, :array_8

    .line 1075
    .line 1076
    .line 1077
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v6

    .line 1084
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 1085
    .line 1086
    .line 1087
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    .line 1088
    .line 1089
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 1090
    .line 1091
    .line 1092
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 1093
    .line 1094
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzR(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 1095
    .line 1096
    .line 1097
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaef;->zza:I

    .line 1098
    .line 1099
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 1100
    .line 1101
    .line 1102
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaef;->zzb:I

    .line 1103
    .line 1104
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzP(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzak;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 1118
    .line 1119
    return v7

    .line 1120
    :cond_2f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 1121
    .line 1122
    const/4 v2, 0x7

    .line 1123
    new-array v2, v2, [J

    .line 1124
    .line 1125
    fill-array-data v2, :array_9

    .line 1126
    .line 1127
    .line 1128
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    const/4 v2, 0x0

    .line 1136
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    throw v1

    :array_0
    .array-data 8
        -0x69a19f87b8b8fa1bL
        0x6cd8fd8eaa592afdL    # 2.1537293290595988E216
        0x6cea923ecfd8b487L    # 4.579934083064693E216
        -0x3b31dd1b8064be46L    # -2.8462929766812953E23
        -0x7e828f7e9c19fd64L
        -0x66d21d20397fa216L
        0x27fbcec07ff5025dL    # 4.410883400792437E-116
    .end array-data

    :array_1
    .array-data 8
        0x37da6de1a8122ecfL    # 1.2135704723008346E-39
        -0x6ad8f88b4f7fcdfL    # -2.553647478997713E276
        -0x201327fb6ec02c24L    # -1.2085387325171675E154
        0x79258102ae290323L    # 3.722581664168635E275
        0x654844da56610518L    # 7.867532273853284E179
        -0x3a72378b900ee5eL    # -9.691301258791326E290
        -0x307756fb9a5b20d6L    # -1.3942669834061201E75
        0x56e3993324a8bde0L    # 3.6822210391275314E110
    .end array-data

    :array_2
    .array-data 8
        0x4ae93b7d60f91399L    # 7.552443889548658E52
        -0x71ec68db5341a1c5L    # -7.344916376503612E-241
        0x30c02fc31eaf8e0bL    # 7.157245739792992E-74
        0x1049afd6d3bc5ba3L
        -0x519cef5b793610e1L    # -3.066819980192651E-85
        -0x577adce61ead913fL
        -0x122f315af22d2ec7L    # -9.492756883811476E220
        0x621fc5bd44ae8f14L
    .end array-data

    :array_3
    .array-data 8
        -0x751ef0f72892baf6L
        0x62459877f35513dL
        0x6463de65614742c7L    # 3.931313651842348E175
        -0x715fadb410976eeL    # -2.815236562153463E274
        0x7a1fbe351defb981L    # 1.800627698975739E280
        -0x3873d2f9e7887828L    # -4.681520109192272E36
        -0x7b5c9b98a01a0922L
    .end array-data

    :array_4
    .array-data 8
        -0x68362cc17860c183L
        0x33794c54cf007450L    # 9.839430791579727E-61
        0x3c0f726ca06841dL
        0x718fc4974e2874e3L    # 1.0343214875616222E239
        0x9e840b3e07fd82bL
        0x60ec67ea027828a8L    # 7.800034203059956E158
        -0xb7062fb61ae1f82L    # -2.8971895760008185E253
    .end array-data

    :array_5
    .array-data 8
        0x7a5225123dc50aaL
        0x1292cd0ebfd8ab81L
        -0x181322ab545ac584L    # -4.1154031645425134E192
        0x23a77a83cfa02ea1L    # 6.309045992603077E-137
        0x75c0fe9688160d1bL    # 1.6331056365186793E259
        -0x9946b9fc644e084L
        0xcd243844fb3181fL
    .end array-data

    :array_6
    .array-data 8
        -0x1d9c725b9ec96beeL    # -9.007980932731037E165
        0x5d36d29d6a116789L    # 1.0871395226271442E141
        -0xe9f8a9ff77e6b02L    # -1.3396666611005512E238
    .end array-data

    :array_7
    .array-data 8
        -0x1f13463e9111c147L    # -7.887819410721858E158
        -0x4837b7e9550cd1dbL    # -5.574781013504774E-40
        0x32ff99f8a61967adL    # 4.8011793995604413E-63
        0x580e1c5952868d33L    # 1.4830293541607975E116
        -0x459c01020813998L    # -4.234977317298293E287
        -0x3d3358298912f730L    # -6.3014366468625625E13
        0x65f0329b07d23693L    # 1.0754002778620864E183
        -0x62b3d43a8e041606L
        -0x5a9f6840d76a44f4L
    .end array-data

    :array_8
    .array-data 8
        -0x7e4ce064480f46eeL    # -1.784723864815208E-300
        0x4823469b53999d4dL    # 3.279608716413218E39
        -0x64d9238f440ef567L    # -7.05195615079832E-178
    .end array-data

    :array_9
    .array-data 8
        0x588e78818e290b3cL    # 3.841944858995939E118
        -0x3258adb1717dee99L    # -1.228020893753528E66
        -0x489e95840920227cL    # -6.247667112780617E-42
        -0x5a1d4907c3abed5aL    # -3.455853166136072E-126
        0x6c0ee8e1b2c85756L
        -0x36b3af2ed3db3848L    # -1.26292205225018E45
        -0x3803da921acee8c5L    # -5.9860364490931674E38
    .end array-data
.end method

.method public final zzi(J)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzake;->zzi(J)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmp-long v3, p1, v0

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzc:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzd:Lcom/google/android/gms/internal/ads/zzaef;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    .line 21
    .line 22
    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzb:I

    .line 23
    .line 24
    return-void
.end method
