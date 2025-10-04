.class final Lcom/google/android/gms/internal/ads/zzqf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:Z

.field private zzE:J

.field private zzF:J

.field private zzG:Z

.field private zzH:J

.field private zzI:Lcom/google/android/gms/internal/ads/zzel;

.field private final zza:Lcom/google/android/gms/internal/ads/zzqe;

.field private final zzb:[J

.field private zzc:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzqd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:I

.field private zzg:Z

.field private zzh:J

.field private zzi:F

.field private zzj:Z

.field private zzk:J

.field private zzl:J

.field private zzm:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:J

.field private zzo:Z

.field private zzp:Z

.field private zzq:J

.field private zzr:J

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:I

.field private zzw:I

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqe;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    .line 5
    .line 6
    sget p1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 7
    .line 8
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzm:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    const/16 p1, 0xa

    .line 33
    .line 34
    new-array p1, p1, [J

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzb:[J

    .line 37
    .line 38
    sget-object p1, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzI:Lcom/google/android/gms/internal/ads/zzel;

    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        -0x2802e153ce90ce39L    # -7.171119558889177E115
        0x7a08dffd93d73a0aL    # 7.055185438487462E279
        0x5a7e8c46e75a26a5L    # 8.271425227296603E127
    .end array-data
.end method

.method private final zzl()J
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmp-long v7, v2, v5

    .line 14
    .line 15
    if-eqz v7, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzz:J

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 36
    .line 37
    sub-long/2addr v0, v2

    .line 38
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzo(JF)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzn(JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzA:J

    .line 51
    .line 52
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzz:J

    .line 53
    .line 54
    add-long/2addr v4, v0

    .line 55
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    return-wide v0

    .line 60
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzr:J

    .line 61
    .line 62
    sub-long v2, v0, v2

    .line 63
    .line 64
    const-wide/16 v7, 0x5

    .line 65
    .line 66
    cmp-long v9, v2, v7

    .line 67
    .line 68
    if-ltz v9, :cond_b

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v7, 0x1

    .line 80
    if-ne v3, v7, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-long v7, v2

    .line 88
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzg:Z

    .line 89
    .line 90
    const-wide v9, 0xffffffffL

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    and-long/2addr v7, v9

    .line 96
    const-wide/16 v9, 0x0

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    if-ne v3, v4, :cond_3

    .line 101
    .line 102
    cmp-long v2, v7, v9

    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzs:J

    .line 107
    .line 108
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzu:J

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move v4, v3

    .line 112
    :cond_4
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzu:J

    .line 113
    .line 114
    add-long/2addr v7, v2

    .line 115
    move v3, v4

    .line 116
    :cond_5
    sget v2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 117
    .line 118
    const/16 v4, 0x1d

    .line 119
    .line 120
    if-gt v2, v4, :cond_8

    .line 121
    .line 122
    cmp-long v2, v7, v9

    .line 123
    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzs:J

    .line 127
    .line 128
    cmp-long v2, v7, v9

    .line 129
    .line 130
    if-lez v2, :cond_7

    .line 131
    .line 132
    const/4 v2, 0x3

    .line 133
    if-ne v3, v2, :cond_7

    .line 134
    .line 135
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzy:J

    .line 136
    .line 137
    cmp-long v4, v2, v5

    .line 138
    .line 139
    if-nez v4, :cond_a

    .line 140
    .line 141
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzy:J

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    move-wide v9, v7

    .line 145
    :cond_7
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzy:J

    .line 146
    .line 147
    move-wide v7, v9

    .line 148
    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzs:J

    .line 149
    .line 150
    cmp-long v4, v2, v7

    .line 151
    .line 152
    if-lez v4, :cond_9

    .line 153
    .line 154
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzt:J

    .line 155
    .line 156
    const-wide/16 v4, 0x1

    .line 157
    .line 158
    add-long/2addr v2, v4

    .line 159
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzt:J

    .line 160
    .line 161
    :cond_9
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzs:J

    .line 162
    .line 163
    :cond_a
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzr:J

    .line 164
    .line 165
    :cond_b
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzs:J

    .line 166
    .line 167
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzH:J

    .line 168
    .line 169
    add-long/2addr v0, v2

    .line 170
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzt:J

    .line 171
    .line 172
    const/16 v4, 0x20

    .line 173
    .line 174
    shl-long/2addr v2, v4

    .line 175
    add-long/2addr v0, v2

    .line 176
    return-wide v0
.end method

.method private final zzm()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private final zzn()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzk:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzw:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzv:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzF:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzj:Z

    return-void
.end method


# virtual methods
.method public final zza(Z)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x3

    .line 7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    const-wide/16 v8, 0x3e8

    .line 19
    .line 20
    if-ne v5, v3, :cond_8

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v10

    .line 26
    div-long/2addr v10, v8

    .line 27
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzl:J

    .line 28
    .line 29
    sub-long v12, v10, v12

    .line 30
    .line 31
    const-wide/16 v14, 0x7530

    .line 32
    .line 33
    cmp-long v5, v12, v14

    .line 34
    .line 35
    if-ltz v5, :cond_2

    .line 36
    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzm()J

    .line 38
    .line 39
    .line 40
    move-result-wide v12

    .line 41
    cmp-long v5, v12, v6

    .line 42
    .line 43
    if-nez v5, :cond_0

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzb:[J

    .line 48
    .line 49
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzv:I

    .line 50
    .line 51
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 52
    .line 53
    invoke-static {v12, v13, v15}, Lcom/google/android/gms/internal/ads/zzfy;->zzp(JF)J

    .line 54
    .line 55
    .line 56
    move-result-wide v12

    .line 57
    sub-long/2addr v12, v10

    .line 58
    aput-wide v12, v5, v14

    .line 59
    .line 60
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzv:I

    .line 61
    .line 62
    add-int/2addr v5, v2

    .line 63
    const/16 v12, 0xa

    .line 64
    .line 65
    rem-int/2addr v5, v12

    .line 66
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzv:I

    .line 67
    .line 68
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzw:I

    .line 69
    .line 70
    if-ge v5, v12, :cond_1

    .line 71
    .line 72
    add-int/2addr v5, v2

    .line 73
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzw:I

    .line 74
    .line 75
    :cond_1
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzl:J

    .line 76
    .line 77
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzk:J

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    :goto_0
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzw:I

    .line 81
    .line 82
    if-ge v5, v12, :cond_2

    .line 83
    .line 84
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzk:J

    .line 85
    .line 86
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzb:[J

    .line 87
    .line 88
    int-to-long v6, v12

    .line 89
    aget-wide v16, v15, v5

    .line 90
    .line 91
    div-long v16, v16, v6

    .line 92
    .line 93
    add-long v6, v16, v13

    .line 94
    .line 95
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzk:J

    .line 96
    .line 97
    add-int/2addr v5, v2

    .line 98
    const-wide/16 v6, 0x0

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzg:Z

    .line 102
    .line 103
    if-nez v5, :cond_8

    .line 104
    .line 105
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zze:Lcom/google/android/gms/internal/ads/zzqd;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzqd;->zzg(J)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const-wide/32 v12, 0x4c4b40

    .line 115
    .line 116
    .line 117
    if-nez v6, :cond_3

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqd;->zzb()J

    .line 122
    .line 123
    .line 124
    move-result-wide v6

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqd;->zza()J

    .line 126
    .line 127
    .line 128
    move-result-wide v14

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzm()J

    .line 130
    .line 131
    .line 132
    move-result-wide v8

    .line 133
    sub-long v18, v6, v10

    .line 134
    .line 135
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v18

    .line 139
    cmp-long v20, v18, v12

    .line 140
    .line 141
    if-lez v20, :cond_4

    .line 142
    .line 143
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    .line 144
    .line 145
    check-cast v2, Lcom/google/android/gms/internal/ads/zzqy;

    .line 146
    .line 147
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrd;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrd;->zzB(Lcom/google/android/gms/internal/ads/zzrd;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrd;->zzC(Lcom/google/android/gms/internal/ads/zzrd;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v1, v1, [J

    .line 165
    .line 166
    fill-array-data v1, :array_0

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    const/4 v1, 0x2

    .line 185
    new-array v14, v1, [J

    .line 186
    .line 187
    fill-array-data v14, :array_1

    .line 188
    .line 189
    .line 190
    invoke-direct {v0, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v6, v1, [J

    .line 206
    .line 207
    fill-array-data v6, :array_2

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v6, v1, [J

    .line 226
    .line 227
    fill-array-data v6, :array_3

    .line 228
    .line 229
    .line 230
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    new-array v6, v1, [J

    .line 246
    .line 247
    fill-array-data v6, :array_4

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v1, v1, [J

    .line 266
    .line 267
    fill-array-data v1, :array_5

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0, v2, v3, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 278
    .line 279
    const/4 v2, 0x3

    .line 280
    new-array v3, v2, [J

    .line 281
    .line 282
    fill-array-data v3, :array_6

    .line 283
    .line 284
    .line 285
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqd;->zzd()V

    .line 296
    .line 297
    .line 298
    :goto_1
    move-object/from16 v0, p0

    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 303
    .line 304
    invoke-static {v14, v15, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    sub-long/2addr v2, v8

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 310
    .line 311
    .line 312
    move-result-wide v2

    .line 313
    const-wide/32 v12, 0x4c4b40

    .line 314
    .line 315
    .line 316
    cmp-long v4, v2, v12

    .line 317
    .line 318
    if-lez v4, :cond_5

    .line 319
    .line 320
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    .line 321
    .line 322
    check-cast v2, Lcom/google/android/gms/internal/ads/zzqy;

    .line 323
    .line 324
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrd;

    .line 325
    .line 326
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrd;->zzB(Lcom/google/android/gms/internal/ads/zzrd;)J

    .line 327
    .line 328
    .line 329
    move-result-wide v3

    .line 330
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrd;->zzC(Lcom/google/android/gms/internal/ads/zzrd;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v12

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v1, v1, [J

    .line 342
    .line 343
    fill-array-data v1, :array_7

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    const/4 v1, 0x2

    .line 362
    new-array v14, v1, [J

    .line 363
    .line 364
    fill-array-data v14, :array_8

    .line 365
    .line 366
    .line 367
    invoke-direct {v0, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 381
    .line 382
    new-array v6, v1, [J

    .line 383
    .line 384
    fill-array-data v6, :array_9

    .line 385
    .line 386
    .line 387
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 401
    .line 402
    new-array v6, v1, [J

    .line 403
    .line 404
    fill-array-data v6, :array_a

    .line 405
    .line 406
    .line 407
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 421
    .line 422
    new-array v6, v1, [J

    .line 423
    .line 424
    fill-array-data v6, :array_b

    .line 425
    .line 426
    .line 427
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 441
    .line 442
    new-array v1, v1, [J

    .line 443
    .line 444
    fill-array-data v1, :array_c

    .line 445
    .line 446
    .line 447
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 448
    .line 449
    .line 450
    invoke-static {v0, v2, v12, v13}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 455
    .line 456
    const/4 v2, 0x3

    .line 457
    new-array v3, v2, [J

    .line 458
    .line 459
    fill-array-data v3, :array_d

    .line 460
    .line 461
    .line 462
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqd;->zzd()V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_1

    .line 476
    .line 477
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqd;->zzc()V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :goto_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzp:Z

    .line 483
    .line 484
    if-eqz v1, :cond_8

    .line 485
    .line 486
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzm:Ljava/lang/reflect/Method;

    .line 487
    .line 488
    if-eqz v1, :cond_8

    .line 489
    .line 490
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzq:J

    .line 491
    .line 492
    sub-long v2, v10, v2

    .line 493
    .line 494
    const-wide/32 v4, 0x7a120

    .line 495
    .line 496
    .line 497
    cmp-long v6, v2, v4

    .line 498
    .line 499
    if-ltz v6, :cond_8

    .line 500
    .line 501
    const/4 v2, 0x0

    .line 502
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 503
    .line 504
    if-eqz v3, :cond_6

    .line 505
    .line 506
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    check-cast v1, Ljava/lang/Integer;

    .line 511
    .line 512
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    int-to-long v3, v1

    .line 519
    const-wide/16 v5, 0x3e8

    .line 520
    .line 521
    mul-long v3, v3, v5

    .line 522
    .line 523
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzh:J

    .line 524
    .line 525
    sub-long/2addr v3, v5

    .line 526
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzn:J

    .line 527
    .line 528
    const-wide/16 v5, 0x0

    .line 529
    .line 530
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 531
    .line 532
    .line 533
    move-result-wide v3

    .line 534
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzn:J

    .line 535
    .line 536
    const-wide/32 v5, 0x4c4b40

    .line 537
    .line 538
    .line 539
    cmp-long v1, v3, v5

    .line 540
    .line 541
    if-lez v1, :cond_7

    .line 542
    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 549
    .line 550
    const/4 v6, 0x7

    .line 551
    new-array v6, v6, [J

    .line 552
    .line 553
    fill-array-data v6, :array_e

    .line 554
    .line 555
    .line 556
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 574
    .line 575
    const/4 v4, 0x3

    .line 576
    new-array v4, v4, [J

    .line 577
    .line 578
    fill-array-data v4, :array_f

    .line 579
    .line 580
    .line 581
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    const-wide/16 v3, 0x0

    .line 592
    .line 593
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzn:J

    .line 594
    .line 595
    goto :goto_3

    .line 596
    :cond_6
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :catch_0
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzm:Ljava/lang/reflect/Method;

    .line 598
    .line 599
    :cond_7
    :goto_3
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzq:J

    .line 600
    .line 601
    :cond_8
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 602
    .line 603
    .line 604
    move-result-wide v1

    .line 605
    const-wide/16 v3, 0x3e8

    .line 606
    .line 607
    div-long/2addr v1, v3

    .line 608
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zze:Lcom/google/android/gms/internal/ads/zzqd;

    .line 609
    .line 610
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqd;->zzf()Z

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    if-eqz v4, :cond_9

    .line 618
    .line 619
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqd;->zza()J

    .line 620
    .line 621
    .line 622
    move-result-wide v5

    .line 623
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 624
    .line 625
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 626
    .line 627
    .line 628
    move-result-wide v5

    .line 629
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqd;->zzb()J

    .line 630
    .line 631
    .line 632
    move-result-wide v7

    .line 633
    sub-long v7, v1, v7

    .line 634
    .line 635
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 636
    .line 637
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzo(JF)J

    .line 638
    .line 639
    .line 640
    move-result-wide v7

    .line 641
    add-long/2addr v7, v5

    .line 642
    goto :goto_7

    .line 643
    :cond_9
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzw:I

    .line 644
    .line 645
    if-nez v3, :cond_a

    .line 646
    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzm()J

    .line 648
    .line 649
    .line 650
    move-result-wide v5

    .line 651
    :goto_5
    move-wide v7, v5

    .line 652
    goto :goto_6

    .line 653
    :cond_a
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzk:J

    .line 654
    .line 655
    add-long/2addr v5, v1

    .line 656
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 657
    .line 658
    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzo(JF)J

    .line 659
    .line 660
    .line 661
    move-result-wide v5

    .line 662
    goto :goto_5

    .line 663
    :goto_6
    if-nez p1, :cond_b

    .line 664
    .line 665
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzn:J

    .line 666
    .line 667
    sub-long/2addr v7, v5

    .line 668
    const-wide/16 v5, 0x0

    .line 669
    .line 670
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 671
    .line 672
    .line 673
    move-result-wide v7

    .line 674
    :cond_b
    :goto_7
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzD:Z

    .line 675
    .line 676
    if-eq v3, v4, :cond_c

    .line 677
    .line 678
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzC:J

    .line 679
    .line 680
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzF:J

    .line 681
    .line 682
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzB:J

    .line 683
    .line 684
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzE:J

    .line 685
    .line 686
    :cond_c
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzF:J

    .line 687
    .line 688
    sub-long v5, v1, v5

    .line 689
    .line 690
    const-wide/32 v9, 0xf4240

    .line 691
    .line 692
    .line 693
    cmp-long v3, v5, v9

    .line 694
    .line 695
    if-gez v3, :cond_d

    .line 696
    .line 697
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzE:J

    .line 698
    .line 699
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 700
    .line 701
    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzo(JF)J

    .line 702
    .line 703
    .line 704
    move-result-wide v13

    .line 705
    add-long/2addr v13, v11

    .line 706
    const-wide/16 v11, 0x3e8

    .line 707
    .line 708
    mul-long v5, v5, v11

    .line 709
    .line 710
    div-long/2addr v5, v9

    .line 711
    mul-long v7, v7, v5

    .line 712
    .line 713
    sub-long v5, v11, v5

    .line 714
    .line 715
    mul-long v5, v5, v13

    .line 716
    .line 717
    add-long/2addr v5, v7

    .line 718
    div-long v7, v5, v11

    .line 719
    .line 720
    :cond_d
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzj:Z

    .line 721
    .line 722
    if-nez v3, :cond_e

    .line 723
    .line 724
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzB:J

    .line 725
    .line 726
    cmp-long v3, v7, v5

    .line 727
    .line 728
    if-lez v3, :cond_e

    .line 729
    .line 730
    const/4 v3, 0x1

    .line 731
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzj:Z

    .line 732
    .line 733
    sub-long v5, v7, v5

    .line 734
    .line 735
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 736
    .line 737
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 738
    .line 739
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfy;->zzt(J)J

    .line 740
    .line 741
    .line 742
    move-result-wide v5

    .line 743
    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzp(JF)J

    .line 744
    .line 745
    .line 746
    move-result-wide v5

    .line 747
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfy;->zzt(J)J

    .line 748
    .line 749
    .line 750
    move-result-wide v5

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 752
    .line 753
    .line 754
    move-result-wide v9

    .line 755
    sub-long/2addr v9, v5

    .line 756
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    .line 757
    .line 758
    check-cast v3, Lcom/google/android/gms/internal/ads/zzqy;

    .line 759
    .line 760
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrd;

    .line 761
    .line 762
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrd;->zzE(Lcom/google/android/gms/internal/ads/zzrd;)Lcom/google/android/gms/internal/ads/zzpy;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    if-eqz v5, :cond_e

    .line 767
    .line 768
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrd;->zzE(Lcom/google/android/gms/internal/ads/zzrd;)Lcom/google/android/gms/internal/ads/zzpy;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    check-cast v3, Lcom/google/android/gms/internal/ads/zzri;

    .line 773
    .line 774
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 775
    .line 776
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrj;->zzad(Lcom/google/android/gms/internal/ads/zzrj;)Lcom/google/android/gms/internal/ads/zzpt;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzpt;->zzv(J)V

    .line 781
    .line 782
    .line 783
    :cond_e
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzC:J

    .line 784
    .line 785
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzB:J

    .line 786
    .line 787
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzqf;->zzD:Z

    .line 788
    .line 789
    return-wide v7

    .line 790
    nop

    .line 791
    :array_0
    .array-data 8
        0x4c318b9d55d46e9aL    # 1.1013406930969946E59
        -0x4351745352863fcL
        -0x1fca505ca7a99613L    # -2.907628784942351E155
        0x4b87e368a7eab144L    # 7.321747449436308E55
        -0x3545f656581d5f78L    # -9.741876976217188E51
        -0x48b524161fd52e1eL    # -2.408801783989845E-42
        0x66cab85984956e6cL    # 1.4532678395348902E187
        0x1e1dbd6dae6497f6L
    .end array-data

    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_1
    .array-data 8
        0x5feecc58216e0170L    # 1.2904269225210499E154
        0xc3e9b1c6d00ace9L
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :array_2
    .array-data 8
        0x6920e5e6463e9cdbL    # 2.526292432537317E198
        0x2b361fa4c48857a1L
    .end array-data

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_3
    .array-data 8
        0x5734d2fde2fa3218L    # 1.2520061120724304E112
        0x31406a74d5fc2d9bL    # 1.8582078326167327E-71
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    :array_4
    .array-data 8
        0x2ed08313d72c253fL    # 3.399863261999589E-83
        -0x6b2b7dd9dd74dd4dL
    .end array-data

    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :array_5
    .array-data 8
        0x3fed327d22c7d609L    # 0.9124131850537093
        0xdcd800d74720764L
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :array_6
    .array-data 8
        0x5c0d529a50d54221L    # 2.664106249988376E135
        -0x685b25bd977aac07L    # -8.926732541264317E-195
        0x5366e283a9cabed5L    # 5.967002208232161E93
    .end array-data

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :array_7
    .array-data 8
        0x52b2cd1f46019115L    # 2.3936774908209295E90
        0x4e1c678605ab16dL
        0x7166e932154b6a5fL    # 1.8648724156401204E238
        0x4f9f11e04d499fe1L    # 3.513320695258408E75
        0x3278f44f090f6ce2L    # 1.4809721275761926E-65
        -0xee36592cf48bceaL    # -7.275647781745001E236
        -0x21e2b2e212cab078L    # -2.2867774229199318E145
        -0x1c13fc976ee180e6L    # -2.165170086197953E173
    .end array-data

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_8
    .array-data 8
        -0x53b14ff72e073e1dL    # -2.8733914644169103E-95
        -0x283cddf9c8aee5efL    # -5.889647921521333E114
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :array_9
    .array-data 8
        0x6d231af0bedcee14L    # 5.2688919050802985E217
        0x6ce2d99beebf09baL    # 3.249070046136614E216
    .end array-data

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    :array_a
    .array-data 8
        0x603d8df4a594a848L
        0x1224c88a56ce1d5fL    # 2.87480885900121E-221
    .end array-data

    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    :array_b
    .array-data 8
        -0x765beb428e224930L    # -3.188595735998206E-262
        -0x66cbc53ac34458bdL
    .end array-data

    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_c
    .array-data 8
        -0x13a6aad2d3fa81b6L    # -8.52822737202821E213
        -0x79459de3a0020f5eL
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    :array_d
    .array-data 8
        0x796feda41823b17cL    # 8.843447984633806E276
        0xf0d9c580c11b7bbL    # 3.637829646814436E-236
        -0x1328019459e2ed4fL    # -2.067837863203931E216
    .end array-data

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    :array_e
    .array-data 8
        0x122906b3ff2f64d0L    # 3.461687258282031E-221
        -0x2fbee57df6b263f0L    # -3.9609108108480595E78
        0x61dbfb6ca2dafbe0L    # 2.517783489786256E163
        0x76991748ee59d9a2L    # 1.9752107780081097E263
        -0x62ed581564548acaL
        -0x2d136419d2fbaa19L    # -2.913876172549891E91
        0x4d9284d260a4cbc0L    # 4.875652410143685E65
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    :array_f
    .array-data 8
        0x59cb9ce1c2fb2a9L
        -0x7aae1b89d1512ba1L    # -4.812972392612452E-283
        -0x4afd0e5bee7a1769L    # -2.472295576815781E-53
    .end array-data
.end method

.method public final zzb(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzz:J

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzA:J

    .line 18
    .line 19
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzn()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zze:Lcom/google/android/gms/internal/ads/zzqd;

    .line 8
    .line 9
    return-void
.end method

.method public final zzd(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzd:I

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqd;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Landroid/media/AudioTrack;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zze:Lcom/google/android/gms/internal/ads/zzqd;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    sget p2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 22
    .line 23
    const/16 v0, 0x17

    .line 24
    .line 25
    if-ge p2, v0, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x5

    .line 28
    const/4 v0, 0x1

    .line 29
    if-eq p3, p2, :cond_1

    .line 30
    .line 31
    const/4 p2, 0x6

    .line 32
    if-ne p3, p2, :cond_0

    .line 33
    .line 34
    const/4 p3, 0x6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzg:Z

    .line 38
    .line 39
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfy;->zzH(I)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzp:Z

    .line 44
    .line 45
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    div-int/2addr p5, p4

    .line 53
    int-to-long p2, p5

    .line 54
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 55
    .line 56
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 57
    .line 58
    .line 59
    move-result-wide p2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-wide p2, v0

    .line 62
    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzh:J

    .line 63
    .line 64
    const-wide/16 p2, 0x0

    .line 65
    .line 66
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzs:J

    .line 67
    .line 68
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzt:J

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzG:Z

    .line 71
    .line 72
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzH:J

    .line 73
    .line 74
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzu:J

    .line 75
    .line 76
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzo:Z

    .line 77
    .line 78
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 79
    .line 80
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzy:J

    .line 81
    .line 82
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzq:J

    .line 83
    .line 84
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzn:J

    .line 85
    .line 86
    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    .line 88
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzi:F

    .line 89
    .line 90
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzI:Lcom/google/android/gms/internal/ads/zzel;

    return-void
.end method

.method public final zzf()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zze:Lcom/google/android/gms/internal/ads/zzqd;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zze()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzg(J)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Z)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzf:I

    .line 7
    .line 8
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzn(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    cmp-long v3, p1, v1

    .line 13
    .line 14
    if-gtz v3, :cond_1

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzg:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x2

    .line 30
    if-ne p1, p2, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    cmp-long v3, p1, v1

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return v0

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 45
    return p1
.end method

.method public final zzh()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final zzi(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzy:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, p1, v0

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzy:J

    .line 23
    .line 24
    sub-long/2addr p1, v0

    .line 25
    const-wide/16 v0, 0xc8

    .line 26
    .line 27
    cmp-long v2, p1, v0

    .line 28
    .line 29
    if-ltz v2, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public final zzj(J)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzg:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzo:Z

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long v6, v0, v4

    .line 31
    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v3

    .line 37
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzo:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzg(J)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzo:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    if-eq v0, v2, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    .line 52
    .line 53
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzd:I

    .line 54
    .line 55
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzh:J

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzt(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqy;

    .line 62
    .line 63
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrd;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrd;->zzE(Lcom/google/android/gms/internal/ads/zzrd;)Lcom/google/android/gms/internal/ads/zzpy;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrd;->zzA(Lcom/google/android/gms/internal/ads/zzrd;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    sub-long v7, v0, v7

    .line 80
    .line 81
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrd;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzE(Lcom/google/android/gms/internal/ads/zzrd;)Lcom/google/android/gms/internal/ads/zzpy;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/google/android/gms/internal/ads/zzri;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrj;->zzad(Lcom/google/android/gms/internal/ads/zzrj;)Lcom/google/android/gms/internal/ads/zzpt;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzpt;->zzx(IJJ)V

    .line 96
    .line 97
    .line 98
    :cond_3
    return v2
.end method

.method public final zzk()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzn()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzx:J

    .line 5
    .line 6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zze:Lcom/google/android/gms/internal/ads/zzqd;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqd;->zze()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzz:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    return v0
.end method
