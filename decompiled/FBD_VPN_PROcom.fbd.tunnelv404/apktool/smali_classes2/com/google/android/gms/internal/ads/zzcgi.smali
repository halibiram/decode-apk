.class final Lcom/google/android/gms/internal/ads/zzcgi;
.super Lcom/google/android/gms/internal/ads/zzfua;
.source "SourceFile"


# instance fields
.field private final zzb:Landroid/hardware/SensorManager;

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Landroid/view/Display;

.field private final zze:[F

.field private final zzf:[F

.field private zzg:[F

.field private zzh:Landroid/os/Handler;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcgh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v1, v2, [J

    .line 37
    .line 38
    fill-array-data v1, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/hardware/SensorManager;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzb:Landroid/hardware/SensorManager;

    .line 55
    .line 56
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v1, v2, [J

    .line 59
    .line 60
    fill-array-data v1, :array_3

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/view/WindowManager;

    .line 75
    .line 76
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzd:Landroid/view/Display;

    .line 81
    .line 82
    const/16 p1, 0x9

    .line 83
    .line 84
    new-array v0, p1, [F

    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zze:[F

    .line 87
    .line 88
    new-array p1, p1, [F

    .line 89
    .line 90
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 91
    .line 92
    new-instance p1, Ljava/lang/Object;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzc:Ljava/lang/Object;

    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x16982334626c94b0L    # 7.883435156271499E-200
        0x67be47f149fb1276L    # 5.396694562933933E191
        0x1e47f6dee3bf7481L    # 8.322959864733619E-163
        -0x326de79cd95d5cdcL    # -4.764134016905146E65
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
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        -0x426046189a2d455cL    # -7.213699768591765E-12
        0x5ba49835963c8ba0L    # 2.9236190025641647E133
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_2
    .array-data 8
        0x27db8f7cf191bfL
        0x5fda63a52a90aac1L    # 5.5284663712298965E153
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_3
    .array-data 8
        -0x3a5e41b476af2ea1L    # -2.7456488916016696E27
        -0x68773a415ce253c1L
    .end array-data
.end method


# virtual methods
.method public final zza(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget v1, p1, v0

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    cmpl-float v1, v1, v4

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    aget v1, p1, v3

    .line 14
    .line 15
    cmpl-float v1, v1, v4

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    aget v1, p1, v2

    .line 20
    .line 21
    cmpl-float v1, v1, v4

    .line 22
    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzc:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzg:[F

    .line 29
    .line 30
    const/16 v5, 0x9

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    new-array v4, v5, [F

    .line 35
    .line 36
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzg:[F

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zze:[F

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzd:Landroid/view/Display;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v1, 0x81

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    if-eq p1, v3, :cond_4

    .line 57
    .line 58
    const/16 v6, 0x82

    .line 59
    .line 60
    if-eq p1, v2, :cond_3

    .line 61
    .line 62
    if-eq p1, v4, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zze:[F

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 67
    .line 68
    invoke-static {p1, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zze:[F

    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 75
    .line 76
    invoke-static {p1, v6, v3, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zze:[F

    .line 81
    .line 82
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 83
    .line 84
    invoke-static {p1, v1, v6, v7}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zze:[F

    .line 89
    .line 90
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 91
    .line 92
    invoke-static {p1, v2, v1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 96
    .line 97
    aget v1, p1, v3

    .line 98
    .line 99
    aget v6, p1, v4

    .line 100
    .line 101
    aput v6, p1, v3

    .line 102
    .line 103
    aput v1, p1, v4

    .line 104
    .line 105
    aget v1, p1, v2

    .line 106
    .line 107
    const/4 v3, 0x6

    .line 108
    aget v4, p1, v3

    .line 109
    .line 110
    aput v4, p1, v2

    .line 111
    .line 112
    aput v1, p1, v3

    .line 113
    .line 114
    const/4 v1, 0x5

    .line 115
    aget v2, p1, v1

    .line 116
    .line 117
    const/4 v3, 0x7

    .line 118
    aget v4, p1, v3

    .line 119
    .line 120
    aput v4, p1, v1

    .line 121
    .line 122
    aput v2, p1, v3

    .line 123
    .line 124
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzc:Ljava/lang/Object;

    .line 125
    .line 126
    monitor-enter p1

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzf:[F

    .line 128
    .line 129
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzg:[F

    .line 130
    .line 131
    invoke-static {v1, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzi:Lcom/google/android/gms/internal/ads/zzcgh;

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgh;->zza()V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void

    .line 143
    :catchall_1
    move-exception v0

    .line 144
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    throw v0

    .line 146
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcgh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzi:Lcom/google/android/gms/internal/ads/zzcgh;

    return-void
.end method

.method public final zzc()V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzh:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzb:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    const/16 v2, 0xb

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    .line 36
    .line 37
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    new-array v4, v4, [J

    .line 41
    .line 42
    fill-array-data v4, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lcom/google/android/gms/internal/ads/zzftt;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzftt;-><init>(Landroid/os/Looper;)V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzh:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzb:Landroid/hardware/SensorManager;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-virtual {v2, p0, v1, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgi;->zzd()V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-void

    .line 99
    :array_0
    .array-data 8
        -0xcfc783e545ed5d5L    # -1.0668303574500056E246
        -0x78c84db71b281de1L    # -6.844264436513223E-274
        -0x176ed6af05f11d49L    # -5.011061201071273E195
        -0x664ac92b547434f2L    # -7.800976568798809E-185
        -0x27efb32c10160430L    # -1.6056424801406483E116
        -0x4d0c6633a597daaaL    # -2.9779277037591653E-63
    .end array-data

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
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 8
        0x44a820a01475e6aL
        0x23dc4f88d6408723L    # 6.086004873185366E-136
        -0x314ddd72f653793dL    # -1.2516292544166305E71
        -0x23f37494eee372eaL    # -2.59341530472632E135
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 8
        -0x6bcae03e2272905dL
        0x64bdb2514e6e2e82L    # 1.8802842648767536E177
        0x44c3f3a3cb0d31a4L    # 1.8843864905237998E23
        -0x55a9d43983267f73L    # -9.666889387801344E-105
        0x467abe5d22dd51f9L    # 3.39015515517E31
        -0x9c410d6651fdac1L    # -3.435998269464999E261
    .end array-data
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzh:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzb:Landroid/hardware/SensorManager;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzh:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgg;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgg;-><init>(Lcom/google/android/gms/internal/ads/zzcgi;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzh:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method

.method public final zze([F)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzg:[F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v3, 0x9

    .line 14
    .line 15
    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method
