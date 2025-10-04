.class final Lcom/google/android/gms/internal/ads/zzzf;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzzk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzzg;

.field private final zzc:J

.field private zzd:Lcom/google/android/gms/internal/ads/zzzc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:I

.field private zzg:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Z

.field private volatile zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzk;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzzg;Lcom/google/android/gms/internal/ads/zzzc;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 9
    .line 10
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzc:J

    .line 11
    .line 12
    return-void
.end method

.method private final zzd()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zze:Ljava/io/IOException;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzk;->zzd(Lcom/google/android/gms/internal/ads/zzzk;)Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzk;->zzc(Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzzf;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzf;->zzd()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_9

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzzk;->zze(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/internal/ads/zzzf;)V

    .line 23
    .line 24
    .line 25
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzc:J

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    sub-long v9, v7, v3

    .line 32
    .line 33
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzh:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzzc;->zzJ(Lcom/google/android/gms/internal/ads/zzzg;JJZ)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-eq v1, v3, :cond_8

    .line 53
    .line 54
    if-eq v1, v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v11, p1

    .line 60
    check-cast v11, Ljava/io/IOException;

    .line 61
    .line 62
    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzzf;->zze:Ljava/io/IOException;

    .line 63
    .line 64
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzf:I

    .line 65
    .line 66
    add-int/lit8 v12, p1, 0x1

    .line 67
    .line 68
    iput v12, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzf:I

    .line 69
    .line 70
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 71
    .line 72
    invoke-interface/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/zzzc;->zzu(Lcom/google/android/gms/internal/ads/zzzg;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzze;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzze;->zza(Lcom/google/android/gms/internal/ads/zzze;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-ne v1, v2, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zze:Ljava/io/IOException;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzzk;->zzf(Lcom/google/android/gms/internal/ads/zzzk;Ljava/io/IOException;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzze;->zza(Lcom/google/android/gms/internal/ads/zzze;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eq v1, v0, :cond_7

    .line 95
    .line 96
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzze;->zza(Lcom/google/android/gms/internal/ads/zzze;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v3, :cond_5

    .line 101
    .line 102
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzf:I

    .line 103
    .line 104
    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzze;->zzb(Lcom/google/android/gms/internal/ads/zzze;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    cmp-long v4, v0, v2

    .line 114
    .line 115
    if-eqz v4, :cond_6

    .line 116
    .line 117
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzze;->zzb(Lcom/google/android/gms/internal/ads/zzze;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzf:I

    .line 123
    .line 124
    add-int/lit8 p1, p1, -0x1

    .line 125
    .line 126
    mul-int/lit16 p1, p1, 0x3e8

    .line 127
    .line 128
    const/16 v0, 0x1388

    .line 129
    .line 130
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    int-to-long v0, p1

    .line 135
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzzf;->zzc(J)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_1
    return-void

    .line 139
    :cond_8
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 140
    .line 141
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzzc;->zzK(Lcom/google/android/gms/internal/ads/zzzg;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catch_0
    move-exception p1

    .line 146
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v0, v0, [J

    .line 149
    .line 150
    fill-array-data v0, :array_0

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    const/4 v2, 0x7

    .line 163
    new-array v2, v2, [J

    .line 164
    .line 165
    fill-array-data v2, :array_1

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 179
    .line 180
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzj;

    .line 181
    .line 182
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzj;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzzk;->zzf(Lcom/google/android/gms/internal/ads/zzzk;Ljava/io/IOException;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Ljava/lang/Error;

    .line 192
    .line 193
    throw p1

    .line 194
    nop

    .line 195
    :array_0
    .array-data 8
        -0x52db9ea834faa89cL    # -3.126516618754675E-91
        0x14b62a8e3862061dL    # 6.742406059038921E-209
    .end array-data

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
    :array_1
    .array-data 8
        0x7617a972150f0170L    # 7.276220005686493E260
        -0x6ed95ce7716bbb25L    # -4.777865598820202E-226
        0x7a500afbd52fa0c3L    # 1.4560590355461002E281
        -0x2467fb5a86770698L    # -1.704816549357289E133
        0xc990f746c18efd3L
        0x2a4b06ff442ba90fL
        0x79cfd435dd1ed6c4L    # 5.642197395901546E278
    .end array-data
.end method

.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzh:Z

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzg:Ljava/lang/Thread;

    .line 11
    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v5, v1, [J

    .line 33
    .line 34
    fill-array-data v5, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 55
    .line 56
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 60
    .line 61
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzzg;->zzh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception v2

    .line 71
    goto :goto_2

    .line 72
    :catch_2
    move-exception v0

    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :catch_3
    move-exception v0

    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :catchall_0
    move-exception v2

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 80
    .line 81
    .line 82
    throw v2

    .line 83
    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    const/4 v2, 0x0

    .line 85
    :try_start_5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzg:Ljava/lang/Thread;

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 88
    .line 89
    .line 90
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    :try_start_6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 92
    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_1
    move-exception v2

    .line 101
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 102
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    .line 103
    :catchall_2
    move-exception v2

    .line 104
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 105
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    .line 106
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 107
    .line 108
    if-nez v3, :cond_1

    .line 109
    .line 110
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v1, v1, [J

    .line 113
    .line 114
    fill-array-data v1, :array_1

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v0, v0, [J

    .line 127
    .line 128
    fill-array-data v0, :array_2

    .line 129
    .line 130
    .line 131
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x3

    .line 142
    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    .line 148
    .line 149
    :cond_1
    throw v2

    .line 150
    :goto_2
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 151
    .line 152
    if-nez v3, :cond_2

    .line 153
    .line 154
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v4, v1, [J

    .line 157
    .line 158
    fill-array-data v4, :array_3

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v0, v0, [J

    .line 171
    .line 172
    fill-array-data v0, :array_4

    .line 173
    .line 174
    .line 175
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzj;

    .line 186
    .line 187
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzzj;-><init>(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 199
    .line 200
    if-nez v2, :cond_2

    .line 201
    .line 202
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v3, v1, [J

    .line 205
    .line 206
    fill-array-data v3, :array_5

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    const/4 v4, 0x6

    .line 219
    new-array v4, v4, [J

    .line 220
    .line 221
    fill-array-data v4, :array_6

    .line 222
    .line 223
    .line 224
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    new-instance v2, Lcom/google/android/gms/internal/ads/zzzj;

    .line 235
    .line 236
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzzj;-><init>(Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :goto_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 248
    .line 249
    if-nez v2, :cond_2

    .line 250
    .line 251
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    .line 257
    .line 258
    :cond_2
    return-void

    .line 259
    :array_0
    .array-data 8
        -0x5e526336254d1cc1L    # -1.852706114581502E-146
        -0x4751a7a30cc72121L    # -1.1414583653816541E-35
    .end array-data

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
    :array_1
    .array-data 8
        0x6431d3c1aad97336L    # 4.40920207279895E174
        0x45cc59b789bb3b51L    # 1.7548082813410267E28
    .end array-data

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
    :array_2
    .array-data 8
        0x1d41534d4853af7eL
        -0x7ff078128efc3538L
        -0x3189b2b0d99b4d41L    # -9.62016693674462E69
        -0x243f2a1198165654L    # -9.560012659695868E133
        0xf245d95162ad45L
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_3
    .array-data 8
        -0x65b2fb8098ac6fd2L
        -0x2b0da42339b523c8L    # -1.6062152253619417E101
    .end array-data

    :array_4
    .array-data 8
        -0xfd550bb23d8cb5dL    # -2.0714196662993223E232
        0x14890772d31ae00cL    # 9.516520600702721E-210
        0x7dd9dfbec9ca319fL    # 1.69215203879767E298
        -0x503976288d48a168L    # -1.520670304673687E-78
        0x40a64f6f905882f2L    # 2855.717898145661
    .end array-data

    :array_5
    .array-data 8
        -0x39bf3aa84bc0a985L    # -2.6574503498073684E30
        -0x1ad58a36b8b2ba93L    # -2.14446498723627E179
    .end array-data

    :array_6
    .array-data 8
        -0x4742eb8d74f635f7L    # -2.187726475931329E-35
        -0x3c2f862a87ae29c4L    # -4.7488587581384909E18
        -0x177f89bcfe08cb40L    # -2.403414871969814E195
        -0x475c1b095ecb3743L    # -7.483437128105029E-36
        0x247c816f48295d4fL    # 6.274977559430747E-133
        -0x3952caa7fa6d5178L    # -2.9620810626866643E32
    .end array-data
.end method

.method public final zza(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzi:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zze:Ljava/io/IOException;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzh:Z

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    monitor-enter p0

    .line 26
    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzh:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzg;->zzg()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzg:Ljava/lang/Thread;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzzk;->zze(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/internal/ads/zzzf;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzb:Lcom/google/android/gms/internal/ads/zzzg;

    .line 61
    .line 62
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzc:J

    .line 63
    .line 64
    sub-long v5, v3, v5

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzzc;->zzJ(Lcom/google/android/gms/internal/ads/zzzg;JJZ)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 71
    .line 72
    :cond_3
    return-void

    .line 73
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1
.end method

.method public final zzb(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zze:Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzf;->zzf:I

    .line 6
    .line 7
    if-gt v1, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    throw v0

    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzk;->zzc(Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzzf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzf;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    .line 17
    .line 18
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzzk;->zze(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/internal/ads/zzzf;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v0, p1, v2

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzf;->zzd()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
