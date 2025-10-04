.class public final Lcom/google/android/gms/internal/ads/zziu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method public synthetic constructor <init>(FFJFJJFLcom/google/android/gms/internal/ads/zzit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zziu;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zziu;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzg:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziu;->zzj:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziu;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziu;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzn:J

    return-void
.end method

.method private static zzf(JJF)J
    .locals 0

    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77    # 0.999f

    mul-float p0, p0, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method

.method private final zzg()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzd:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zze:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zze:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzl:J

    return-void
.end method


# virtual methods
.method public final zza(JJ)F
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzc:J

    .line 7
    .line 8
    const/high16 v6, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v9, v4, v7

    .line 16
    .line 17
    if-eqz v9, :cond_8

    .line 18
    .line 19
    sub-long v4, p1, p3

    .line 20
    .line 21
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zziu;->zzm:J

    .line 22
    .line 23
    cmp-long v11, v9, v7

    .line 24
    .line 25
    if-nez v11, :cond_0

    .line 26
    .line 27
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzm:J

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzn:J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v11, 0x3f7fbe77    # 0.999f

    .line 35
    .line 36
    .line 37
    invoke-static {v9, v10, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zziu;->zzf(JJF)J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v9

    .line 45
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zziu;->zzm:J

    .line 46
    .line 47
    sub-long/2addr v4, v9

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zziu;->zzn:J

    .line 53
    .line 54
    invoke-static {v9, v10, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zziu;->zzf(JJF)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzn:J

    .line 59
    .line 60
    :goto_0
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzl:J

    .line 61
    .line 62
    const-wide/16 v9, 0x3e8

    .line 63
    .line 64
    cmp-long v11, v4, v7

    .line 65
    .line 66
    if-eqz v11, :cond_2

    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zziu;->zzl:J

    .line 73
    .line 74
    sub-long/2addr v4, v11

    .line 75
    cmp-long v11, v4, v9

    .line 76
    .line 77
    if-ltz v11, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:F

    .line 81
    .line 82
    return v1

    .line 83
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzl:J

    .line 88
    .line 89
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzm:J

    .line 90
    .line 91
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zziu;->zzn:J

    .line 92
    .line 93
    const-wide/16 v13, 0x3

    .line 94
    .line 95
    mul-long v11, v11, v13

    .line 96
    .line 97
    add-long/2addr v11, v4

    .line 98
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    .line 99
    .line 100
    const v13, 0x33d6bf95    # 1.0E-7f

    .line 101
    .line 102
    .line 103
    const/high16 v14, -0x40800000    # -1.0f

    .line 104
    .line 105
    cmp-long v15, v4, v11

    .line 106
    .line 107
    if-lez v15, :cond_5

    .line 108
    .line 109
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    iget v7, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:F

    .line 114
    .line 115
    add-float/2addr v7, v14

    .line 116
    iget v8, v0, Lcom/google/android/gms/internal/ads/zziu;->zzi:F

    .line 117
    .line 118
    add-float/2addr v8, v14

    .line 119
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zziu;->zze:J

    .line 120
    .line 121
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    .line 122
    .line 123
    long-to-float v4, v4

    .line 124
    mul-float v8, v8, v4

    .line 125
    .line 126
    mul-float v7, v7, v4

    .line 127
    .line 128
    float-to-long v4, v7

    .line 129
    float-to-long v7, v8

    .line 130
    add-long/2addr v4, v7

    .line 131
    sub-long/2addr v14, v4

    .line 132
    new-array v4, v2, [J

    .line 133
    .line 134
    aput-wide v11, v4, v1

    .line 135
    .line 136
    aput-wide v9, v4, v3

    .line 137
    .line 138
    const/4 v5, 0x2

    .line 139
    aput-wide v14, v4, v5

    .line 140
    .line 141
    aget-wide v7, v4, v1

    .line 142
    .line 143
    const/4 v1, 0x1

    .line 144
    :goto_2
    if-ge v1, v2, :cond_4

    .line 145
    .line 146
    aget-wide v9, v4, v1

    .line 147
    .line 148
    cmp-long v5, v9, v7

    .line 149
    .line 150
    if-gtz v5, :cond_3

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    move-wide v7, v9

    .line 154
    :goto_3
    add-int/2addr v1, v3

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    iget v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:F

    .line 160
    .line 161
    add-float/2addr v1, v14

    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    div-float/2addr v1, v13

    .line 168
    float-to-long v1, v1

    .line 169
    sub-long v1, p1, v1

    .line 170
    .line 171
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    .line 172
    .line 173
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    .line 182
    .line 183
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zziu;->zzg:J

    .line 184
    .line 185
    cmp-long v5, v3, v7

    .line 186
    .line 187
    if-eqz v5, :cond_6

    .line 188
    .line 189
    cmp-long v5, v1, v3

    .line 190
    .line 191
    if-lez v5, :cond_6

    .line 192
    .line 193
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    .line 194
    .line 195
    move-wide v7, v3

    .line 196
    goto :goto_4

    .line 197
    :cond_6
    move-wide v7, v1

    .line 198
    :goto_4
    sub-long v1, p1, v7

    .line 199
    .line 200
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zziu;->zza:J

    .line 201
    .line 202
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    cmp-long v5, v7, v3

    .line 207
    .line 208
    if-gez v5, :cond_7

    .line 209
    .line 210
    iput v6, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:F

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_7
    long-to-float v1, v1

    .line 214
    mul-float v1, v1, v13

    .line 215
    .line 216
    add-float/2addr v1, v6

    .line 217
    iget v2, v0, Lcom/google/android/gms/internal/ads/zziu;->zzj:F

    .line 218
    .line 219
    iget v3, v0, Lcom/google/android/gms/internal/ads/zziu;->zzi:F

    .line 220
    .line 221
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    iput v6, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:F

    .line 230
    .line 231
    :cond_8
    :goto_5
    return v6
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    return-wide v0
.end method

.method public final zzc()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzh:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzl:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbf;->zzc:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzc:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzf:J

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzg:J

    .line 25
    .line 26
    const p1, 0x3f7851ec    # 0.97f

    .line 27
    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzj:F

    .line 30
    .line 31
    const p1, 0x3f83d70a    # 1.03f

    .line 32
    .line 33
    .line 34
    iput p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzi:F

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziu;->zzg()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zze(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzd:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziu;->zzg()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
