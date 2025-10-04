.class public final Lcom/google/android/gms/internal/ads/zzdyp;
.super Lcom/google/android/gms/internal/ads/zzfua;
.source "SourceFile"


# instance fields
.field private final zzb:Landroid/hardware/SensorManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/hardware/Sensor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:F

.field private zze:Ljava/lang/Float;

.field private zzf:J

.field private zzg:I

.field private zzh:Z

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/ads/zzdyo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzfua;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzf:J

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzg:I

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzh:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzi:Z

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzj:Lcom/google/android/gms/internal/ads/zzdyo;

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzk:Z

    .line 64
    .line 65
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v2, v2, [J

    .line 68
    .line 69
    fill-array-data v2, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/hardware/SensorManager;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzb:Landroid/hardware/SensorManager;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    const/4 v0, 0x4

    .line 90
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:Landroid/hardware/Sensor;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:Landroid/hardware/Sensor;

    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x556e5b8b80516104L
        -0x4877fedf896de83fL    # -3.444462704350467E-41
        0x5829ff378f5a90bdL    # 5.1216582558577646E116
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x6c2256f0aba86440L    # 7.71750721159261E212
        -0x63357d6574d654a4L    # -5.487884744887186E-170
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 8
        -0x54b05b40b977ea55L    # -4.521021423461291E-100
        -0x6c4d89179a2e33d8L    # -8.569988784942364E-214
    .end array-data
.end method


# virtual methods
.method public final zza(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zziW:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzf:J

    .line 30
    .line 31
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zziY:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    int-to-long v4, v4

    .line 48
    add-long/2addr v2, v4

    .line 49
    const/4 v4, 0x0

    .line 50
    cmp-long v5, v2, v0

    .line 51
    .line 52
    if-gez v5, :cond_1

    .line 53
    .line 54
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzg:I

    .line 55
    .line 56
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzf:J

    .line 57
    .line 58
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzh:Z

    .line 59
    .line 60
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzi:Z

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 69
    .line 70
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    aget p1, p1, v2

    .line 74
    .line 75
    const/high16 v3, 0x40800000    # 4.0f

    .line 76
    .line 77
    mul-float p1, p1, v3

    .line 78
    .line 79
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    add-float/2addr v3, p1

    .line 86
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 97
    .line 98
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbgc;->zziX:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 99
    .line 100
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    add-float/2addr v6, v3

    .line 115
    cmpl-float p1, p1, v6

    .line 116
    .line 117
    if-lez p1, :cond_2

    .line 118
    .line 119
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 126
    .line 127
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzi:Z

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 137
    .line 138
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Ljava/lang/Float;

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    sub-float/2addr v3, v5

    .line 153
    cmpg-float p1, p1, v3

    .line 154
    .line 155
    if-gez p1, :cond_3

    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 164
    .line 165
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzh:Z

    .line 166
    .line 167
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Float;->isInfinite()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_4

    .line 174
    .line 175
    const/4 p1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zze:Ljava/lang/Float;

    .line 181
    .line 182
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzd:F

    .line 183
    .line 184
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzh:Z

    .line 185
    .line 186
    if-eqz p1, :cond_5

    .line 187
    .line 188
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzi:Z

    .line 189
    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    const/4 v3, 0x3

    .line 195
    new-array v3, v3, [J

    .line 196
    .line 197
    fill-array-data v3, :array_0

    .line 198
    .line 199
    .line 200
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzf:J

    .line 211
    .line 212
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzg:I

    .line 213
    .line 214
    add-int/2addr p1, v2

    .line 215
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzg:I

    .line 216
    .line 217
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzh:Z

    .line 218
    .line 219
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzi:Z

    .line 220
    .line 221
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzj:Lcom/google/android/gms/internal/ads/zzdyo;

    .line 222
    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zziZ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 226
    .line 227
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-ne p1, v1, :cond_5

    .line 242
    .line 243
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdzb;

    .line 244
    .line 245
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzd;

    .line 246
    .line 247
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzb;-><init>(Lcom/google/android/gms/internal/ads/zzdzd;)V

    .line 248
    .line 249
    .line 250
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdzc;->zzc:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 251
    .line 252
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdzd;->zzh(Lcom/google/android/gms/ads/internal/client/zzda;Lcom/google/android/gms/internal/ads/zzdzc;)V

    .line 253
    .line 254
    .line 255
    :cond_5
    :goto_1
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        -0x6649cfeefdde43b6L    # -8.158984748075122E-185
        -0x119aff6e722f735L
        0x111f9f6c90e894e4L    # 3.337205177070978E-226
    .end array-data
.end method

.method public final zzb()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzk:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzb:Landroid/hardware/SensorManager;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:Landroid/hardware/Sensor;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzk:Z

    .line 19
    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0

    .line 45
    :array_0
    .array-data 8
        0x5f8c110e3ce96d94L    # 1.8374604354457215E152
        -0x8e7b525f0049ae1L
        0x3e8c07b30093b8cL
        -0x324407a42cb18f86L    # -2.94560071535878E66
        -0x1ccc79aa87fc27a9L    # -7.368564134342169E169
        -0x6370722bf0d9a6a5L
    .end array-data
.end method

.method public final zzc()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zziW:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzk:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzb:Landroid/hardware/SensorManager;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:Landroid/hardware/Sensor;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzk:Z

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzb:Landroid/hardware/SensorManager;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:Landroid/hardware/Sensor;

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-void

    .line 72
    :cond_3
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/16 v1, 0xa

    .line 75
    .line 76
    new-array v1, v1, [J

    .line 77
    .line 78
    fill-array-data v1, :array_1

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw v0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0xab40e6bc8fcd924L
        0x268b4d0502b2f226L    # 5.162357461725223E-123
        -0x3c3fa1cee9628507L    # -2.3588682512375444E18
        -0x7de353e220c0c752L    # -1.712565965056282E-298
        -0x1f1c2c0a83689050L    # -5.444598594035345E158
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        -0x2a2a2f215d81c837L    # -3.127170618073213E105
        0x5dd4e6753733a50L
        0x6d747a6cd5221cf4L    # 1.8072121260460773E219
        -0x63e32cfc5353f826L    # -2.913539403844228E-173
        0x4c7b321b8988c1fL
        0x34f00b8be7a9a7a8L    # 1.0469918575285189E-53
        0x5c625d962196045bL    # 1.067904717959452E137
        -0x65e1117e3b578536L    # -7.279574240558405E-183
        0x32e0d1ed8c4ce542L    # 1.2777259466348604E-63
        -0x943d68a2eeb6a8aL    # -8.867863583127689E263
    .end array-data
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdyo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzj:Lcom/google/android/gms/internal/ads/zzdyo;

    return-void
.end method
