.class public final Lcom/google/android/gms/internal/ads/zzepd;
.super Lcom/google/android/gms/internal/ads/zzbuu;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzceu;

.field private final zzd:Lorg/json/JSONObject;

.field private final zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbus;Lcom/google/android/gms/internal/ads/zzceu;J)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbuu;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzc:Lcom/google/android/gms/internal/ads/zzceu;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zza:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzb:Lcom/google/android/gms/internal/ads/zzbus;

    .line 20
    .line 21
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzepd;->zze:J

    .line 22
    .line 23
    :try_start_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array p4, v0, [J

    .line 26
    .line 27
    fill-array-data p4, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbus;->zzf()Lcom/google/android/gms/internal/ads/zzbvg;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbvg;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array p4, v0, [J

    .line 51
    .line 52
    fill-array-data p4, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbus;->zzg()Lcom/google/android/gms/internal/ads/zzbvg;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbvg;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 p3, 0x2

    .line 76
    new-array p3, p3, [J

    .line 77
    .line 78
    fill-array-data p3, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :catch_0
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        0x1b57d3ca09ab4f9L
        -0x6620058a272b82f2L
        0x7cf9bd9135fedac3L    # 1.027478429713677E294
    .end array-data

    .line 94
    .line 95
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
    :array_1
    .array-data 8
        -0x76e549605c091c5fL    # -8.284619361488364E-265
        -0x2a17fd141421f19L    # -7.791942786635556E295
        -0x17e975e39ac7ad24L    # -2.5708777761024068E193
    .end array-data

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
    :array_2
    .array-data 8
        -0x3174680662143879L    # -2.38055488794559E70
        -0x1d0ddc7198907bdL
    .end array-data
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzceu;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzepd;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzbA:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_0

    .line 77
    .line 78
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    new-array v2, v2, [J

    .line 82
    .line 83
    fill-array-data v2, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 105
    :catch_0
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0

    .line 109
    :array_0
    .array-data 8
        -0x3a5cefb0ea4ca251L    # -2.949965733488921E27
        0x4e6ded4b3867ede9L    # 6.454627282593375E69
    .end array-data

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
        -0x3f299a0027ee2883L    # -22935.997562847555
        0x605ee2c361e39282L    # 1.6564431640565903E156
        0x2665d981b802ccfbL
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
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 8
        -0x3bf1bac9298b1231L    # -6.979871645579253E19
        0x70ac1dfc3b962bfeL    # 5.5875011909325126E234
        -0x3ad74490bc9a5ea0L    # -1.4949677324052556E25
        -0x55d6fbbfac1fc385L
        0x70064e79630972acL    # 4.3289133108183403E231
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_3
    .array-data 8
        -0x2895c9308ee83580L    # -1.2608499040044254E113
        0x3ed3e4abd4cd67a7L    # 4.742919668421491E-6
        0x530aaad4e2f64ea8L    # 1.0864454335526295E92
        -0x4ed91e42a35ace01L    # -6.475318701704588E-72
    .end array-data
.end method

.method private final declared-synchronized zzh(Ljava/lang/String;I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbB:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzepd;->zze:J

    .line 72
    .line 73
    sub-long/2addr v1, v3

    .line 74
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbA:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 81
    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 99
    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    const/4 v1, 0x4

    .line 103
    new-array v1, v1, [J

    .line 104
    .line 105
    fill-array-data v1, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    :catch_0
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzc:Lcom/google/android/gms/internal/ads/zzceu;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    throw p1

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        -0x33defcca9c531851L    # -5.339470148600636E58
        0x42469ccc7078ad33L    # 1.9423984868935312E11
        -0xa009083cf07cc8fL    # -2.416665199383624E260
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
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 8
        0x7daee31388a78ed8L    # 2.525001858872861E297
        -0x4062679829c4ed82L    # -0.028901693773848873
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        0x69b98d7fd086796bL    # 1.955935157951763E201
        -0x5b9b2853fff414d4L
        0x5470a8f27c016a96L    # 5.693669961294596E98
        0x2c7a8e2e831ca7eaL    # 1.9891804040077023E-94
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized zzc()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v1, 0x5

    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzepd;->zzh(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x303ac205dddb6b7aL    # 2.310857520052089E-76
        -0x1d37d903d7d3b0b6L    # -7.121079412206984E167
        0x4377d4e317c554abL    # 1.07327940573088432E17
        0x3ec485743f81dc67L    # 2.4463301962446545E-6
        0x6b45be09a9daf2ccL    # 5.584357259333805E208
    .end array-data
.end method

.method public final declared-synchronized zzd()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzbA:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzc:Lcom/google/android/gms/internal/ads/zzceu;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    throw v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x251dd98fab4bedb3L    # -6.290546887437844E129
        0x9f3ccd2c0b8b140L
        -0x5bf4f5fa5e12f64aL    # -4.650128622358241E-135
        -0x700fcbe89c5a79d5L    # -6.523064840558103E-232
    .end array-data
.end method

.method public final declared-synchronized zze(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    :try_start_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    new-array v0, v0, [J

    .line 15
    .line 16
    fill-array-data v0, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzepd;->zzf(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 34
    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v0, [J

    .line 38
    .line 39
    fill-array-data v3, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbB:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 71
    .line 72
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v0, v0, [J

    .line 75
    .line 76
    fill-array-data v0, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzepd;->zze:J

    .line 95
    .line 96
    sub-long/2addr v1, v3

    .line 97
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbA:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 101
    .line 102
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 119
    .line 120
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v1, 0x4

    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    :catch_0
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzc:Lcom/google/android/gms/internal/ads/zzceu;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzd:Lorg/json/JSONObject;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zzf:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 151
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    throw p1

    .line 153
    :array_0
    .array-data 8
        0x59bb3276b45ce390L    # 1.7978821013702266E124
        0x6a1418faf8fb3d3dL    # 9.845569698191423E202
        0x2110e24818b61b58L    # 2.063171143095027E-149
        -0x25793da379b98b75L    # -1.2324963185866467E128
        -0x6a6418602fb1c80dL
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        -0x1742f21681c5f04aL    # -3.3935032194671205E196
        -0x43f882e10464091bL    # -1.5916598829646158E-19
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_2
    .array-data 8
        -0x3a23ce769794d3cfL    # -3.4901866122203668E28
        0x7f276f015bb9332bL    # 3.213992909881061E304
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 8
        0x773f5ccdf7c4a0ebL    # 2.5281748423600377E266
        -0xfba7e94c2fd2439L    # -6.677548787100487E232
        0x768c905d2010f8d7L    # 1.1243047744653789E263
        -0x2680e9805ae85a57L    # -1.2844270045507326E123
    .end array-data
.end method

.method public final declared-synchronized zzf(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzepd;->zzh(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzepd;->zzh(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method
