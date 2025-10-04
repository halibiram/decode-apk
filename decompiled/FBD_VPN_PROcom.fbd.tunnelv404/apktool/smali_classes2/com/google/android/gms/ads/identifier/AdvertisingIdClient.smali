.class public Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field zza:Lcom/google/android/gms/common/BlockingServiceConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field zzc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final zzd:Ljava/lang/Object;

.field zze:Lcom/google/android/gms/ads/identifier/zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAutoDisconnectTaskLock"
    .end annotation
.end field

.field final zzf:J

.field private final zzg:Landroid/content/Context;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x7530

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;JZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JZZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzd:Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_0

    move-object p1, p4

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzg:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzf:J

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v10, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v7, 0x0

    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    move-object v2, v10

    .line 10
    move-object v3, p0

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;JZZ)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v10, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb(Z)V

    .line 19
    .line 20
    .line 21
    const/4 p0, -0x1

    .line 22
    invoke-direct {v10, p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzd(I)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sub-long v6, v4, v2

    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v3, v0, [J

    .line 35
    .line 36
    const-wide v4, -0x10bd08c9fe3a9463L    # -8.985761242345963E227

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    aput-wide v4, v3, v1

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v2, v10

    .line 54
    move-object v3, p0

    .line 55
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza()V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v0, v0, [J

    .line 66
    .line 67
    const-wide v3, 0x4c62ad5a4a87b02L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    aput-wide v3, v0, v1

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x1

    .line 83
    const/4 v5, 0x0

    .line 84
    const-wide/16 v6, -0x1

    .line 85
    .line 86
    move-object v2, v10

    .line 87
    move-object v9, p0

    .line 88
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z

    .line 89
    .line 90
    .line 91
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    invoke-virtual {v10}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza()V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public static getIsAdIdFakeForDebugLogging(Landroid/content/Context;)Z
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x6

    .line 3
    new-instance v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    move-object v2, v8

    .line 10
    move-object v3, p0

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;JZZ)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {v8, p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    new-array v3, v3, [J

    .line 23
    .line 24
    fill-array-data v3, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    iget-boolean v2, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    iget-object v2, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzd:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    iget-object v3, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze:Lcom/google/android/gms/ads/identifier/zzb;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-boolean v3, v3, Lcom/google/android/gms/ads/identifier/zzb;->zzb:Z

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :try_start_3
    invoke-virtual {v8, p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_4
    iget-boolean p0, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 63
    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v1, v1, [J

    .line 67
    .line 68
    fill-array-data v1, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance v0, Ljava/io/IOException;

    .line 86
    .line 87
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v1, v1, [J

    .line 90
    .line 91
    fill-array-data v1, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    .line 108
    .line 109
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v1, v1, [J

    .line 112
    .line 113
    fill-array-data v1, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :goto_0
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    :try_start_6
    throw p0

    .line 129
    :cond_2
    :goto_1
    iget-object p0, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza:Lcom/google/android/gms/common/BlockingServiceConnection;

    .line 130
    .line 131
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object p0, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    .line 138
    .line 139
    :try_start_7
    iget-object p0, v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 140
    .line 141
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads_identifier/zzf;->zzd()Z

    .line 142
    .line 143
    .line 144
    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 145
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 146
    :try_start_9
    invoke-direct {v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza()V

    .line 150
    .line 151
    .line 152
    return p0

    .line 153
    :catchall_2
    move-exception p0

    .line 154
    goto :goto_3

    .line 155
    :catch_1
    :try_start_a
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v1, v0, [J

    .line 158
    .line 159
    fill-array-data v1, :array_4

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v0, v0, [J

    .line 171
    .line 172
    fill-array-data v0, :array_5

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    new-instance p0, Ljava/io/IOException;

    .line 182
    .line 183
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    const/4 v1, 0x3

    .line 186
    new-array v1, v1, [J

    .line 187
    .line 188
    fill-array-data v1, :array_6

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :goto_2
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 203
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 204
    :goto_3
    invoke-virtual {v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza()V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    nop

    .line 209
    :array_0
    .array-data 8
        -0x7a8b23fb6048c3f1L    # -2.244433987108929E-282
        -0x26a1393ed003589fL    # -3.1788926882300142E122
        -0x2d1b269a4647604cL    # -2.1235293853053805E91
        -0x4128672187219cb6L    # -5.625997699620236E-6
        -0x7409339d8b64baa1L    # -4.975394959361452E-251
        0xe4db7eeefaeaa88L    # 8.913744841772774E-240
        0x2694d8bcdfd88232L    # 7.883837745516201E-123
        0x109401b44c1a9f6L
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        0x5b1b05ae49dc720dL    # 7.492360917207653E130
        -0x77af86f1149d3b59L    # -1.2472500041007952E-268
        -0x5dbfaa6476b23419L
        -0x197d477b4bc88e4aL    # -6.363721475437073E185
        0x2b5c8d1219cc8b8aL
        0x31549b4ff6a2458fL    # 4.665189037726947E-71
    .end array-data

    :array_2
    .array-data 8
        -0x7567489a22cd03a3L
        0x76a981258f0a0d0dL    # 4.0155282499181145E263
        -0x37902ed8f8e860ebL    # -8.661411735275177E40
        0x7882ab8ff6e4b151L    # 3.156270820701273E272
        -0x442aacca1c80c4e1L    # -1.8063012350315793E-20
        0x661c4da71e243269L    # 7.5164872788849405E183
    .end array-data

    :array_3
    .array-data 8
        -0x1e36df8dbce28ecbL    # -1.1304305295453326E163
        0x28ea56842c08096fL    # 1.368969135887854E-111
        -0x4e0065f6fff61290L    # -7.3260762116784185E-68
        0x7f63483e5866d553L    # 4.231381949138526E305
        -0x4a389aca3c36bee8L    # -1.2506054046357439E-49
        -0x195d2ff14fce6f36L    # -2.557991047979671E186
    .end array-data

    :array_4
    .array-data 8
        -0x6aefac062b3711e7L
        -0x7aab9852a2737b78L    # -5.488838487342988E-283
        0x11494dad7834b155L    # 2.136252682371745E-225
        -0x6aa19392ce23b497L    # -9.476167688846083E-206
    .end array-data

    :array_5
    .array-data 8
        0xd03d8ebb924b1ebL
        -0x3c6788fb3a2eb1beL    # -4.4072075670136845E17
        -0x5734edb6126e9f1fL
        -0x67ff67bc4ee04519L    # -4.546575037103098E-193
    .end array-data

    :array_6
    .array-data 8
        -0x26df94e0ec8c805bL    # -2.119826112956139E121
        -0x3c53bff60fd3eb09L    # -1.01781897935391834E18
        0x7be1f8c68eb5d8b7L    # 5.473144905397248E288
    .end array-data
.end method

.method public static setShouldSkipGmsCoreVersionCheck(Z)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    return-void
.end method

.method private final zzd(I)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x6

    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzd:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze:Lcom/google/android/gms/ads/identifier/zzb;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-boolean v2, v2, Lcom/google/android/gms/ads/identifier/zzb;->zzb:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v0, v0, [J

    .line 53
    .line 54
    fill-array-data v0, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :catch_0
    move-exception p1

    .line 72
    new-instance v1, Ljava/io/IOException;

    .line 73
    .line 74
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v0, [J

    .line 77
    .line 78
    fill-array-data v0, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .line 95
    .line 96
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_3

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :try_start_5
    throw p1

    .line 116
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza:Lcom/google/android/gms/common/BlockingServiceConnection;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    .line 125
    .line 126
    :try_start_6
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 129
    .line 130
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads_identifier/zzf;->zzc()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 135
    .line 136
    const/4 v3, 0x1

    .line 137
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads_identifier/zzf;->zze(Z)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    .line 143
    .line 144
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze()V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :catch_1
    :try_start_8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v1, p1, [J

    .line 152
    .line 153
    fill-array-data v1, :array_4

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array p1, p1, [J

    .line 165
    .line 166
    fill-array-data p1, :array_5

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    new-instance p1, Ljava/io/IOException;

    .line 176
    .line 177
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    const/4 v1, 0x3

    .line 180
    new-array v1, v1, [J

    .line 181
    .line 182
    fill-array-data v1, :array_6

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :goto_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 197
    throw p1

    .line 198
    nop

    .line 199
    :array_0
    .array-data 8
        0x1ebc052d532170caL
        -0x4a815841d3c12ec0L    # -5.1208911565229116E-51
        -0x5ec2b258e7a5388dL
        0x7cbe0860dbea7228L    # 7.492566131424942E292
        -0xa0428c7e7d62d4fL
        0x405c347f44a032efL    # 112.82026782650404
        -0x1df1354a00e0abb7L    # -2.216477307179277E164
        -0x2dc3e2053b1fd4dL    # -6.30919266045202E294
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_1
    .array-data 8
        0x56b357b93bac5628L    # 4.542708458879877E109
        -0x7fab9b08db085bc7L    # -4.537903767627431E-307
        0x5f3186d4955b633fL    # 3.5857296151607386E150
        0x2ed77705af99d898L    # 4.831483245442675E-83
        -0x13355f94076cdff6L    # -1.1473697545218777E216
        0x5c8ec25b7dccf81cL    # 7.154234848463881E137
    .end array-data

    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        0x70cdb3a006dc1f1dL    # 2.360953108415341E235
        0x51175441cc0e1043L    # 4.4258567538833556E82
        0x146d5f2c25c484bcL    # 2.791920963410875E-210
        0x4542ce38fc22b2d7L    # 4.546904686896617E25
        -0x12738d792a3da098L    # -5.02098560869812E219
        0x8581fbf3a106e18L
    .end array-data

    :array_3
    .array-data 8
        -0x499b3ff64adf7e3aL    # -1.1358261993058731E-46
        -0x1a46ed42dff07890L    # -1.0404162679918264E182
        -0x895ea4413cf54a3L    # -1.682191081523411E267
        -0x6add35e5137f7e07L    # -7.315560299220364E-207
        -0x16fad295191c49fL    # -4.372716334938926E301
        -0x735370175a47876dL    # -1.276569242927382E-247
    .end array-data

    :array_4
    .array-data 8
        -0x588a521f478a8f4L
        -0x47c1c82f3875911aL    # -8.880280734235544E-38
        0x7c527b6f07614403L    # 7.204579248842294E290
        0x2a2435b6fbc1dde3L    # 1.101473487634362E-105
    .end array-data

    :array_5
    .array-data 8
        -0x189e73b5bf6501d9L    # -9.773162165883778E189
        0x52c8472015e51e17L    # 6.181852491685225E90
        0x38a43e318ef43a23L    # 7.614549108798153E-36
        -0x5011a0ddf9acf9b4L    # -8.196699016161837E-78
    .end array-data

    :array_6
    .array-data 8
        0x28bbb8ba2a739eeeL
        0x22b6459b8b1e1439L
        -0x64355bfb9ff7e720L    # -8.41507566915518E-175
    .end array-data
.end method

.method private final zze()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzd:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze:Lcom/google/android/gms/ads/identifier/zzb;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/ads/identifier/zzb;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze:Lcom/google/android/gms/ads/identifier/zzb;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-wide v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzf:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v5, v1, v3

    .line 26
    .line 27
    if-lez v5, :cond_1

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/gms/ads/identifier/zzb;

    .line 30
    .line 31
    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/ads/identifier/zzb;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;J)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze:Lcom/google/android/gms/ads/identifier/zzb;

    .line 35
    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v1
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzd(I)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public start()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zza()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
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
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzg:Landroid/content/Context;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza:Lcom/google/android/gms/common/BlockingServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzg:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza:Lcom/google/android/gms/common/BlockingServiceConnection;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    :try_start_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    new-array v1, v1, [J

    .line 50
    .line 51
    fill-array-data v1, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v1, 0x7

    .line 63
    new-array v1, v1, [J

    .line 64
    .line 65
    fill-array-data v1, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza:Lcom/google/android/gms/common/BlockingServiceConnection;

    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_1
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    throw v0

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x71b0b131e1adaf5eL    # -9.390451365393971E-240
        0x60281c2dda244e69L    # 1.6163162502696336E155
        0x64e9f0127864c2adL    # 1.3138333684489387E178
        0x76c66efa87b4ce42L    # 1.4128089902715793E264
        0x2f05094ea669e4c7L    # 3.465147385847592E-82
        -0x19a9512104149a9L    # -7.171638289776435E300
        -0x62a7d3fb2ad836aaL    # -2.561970260353306E-167
        0x4fdfdf1bd9c4bce2L    # 5.7663589678822156E76
    .end array-data

    .line 92
    .line 93
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
        0x50585a881cfcc1a9L    # 1.1279835157328366E79
        -0x167c4ec76ef71c66L
        0x6eb86ab038b22920L    # 2.2594599929100302E225
        0x23858bfcadea4196L
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
        -0x5300681ba398a9b6L
        0x41f03fc2ad806abbL    # 4.361824984026057E9
        0x5bda0310ea323374L    # 2.954142510924319E134
        -0x7bddbd8b41dab6d5L    # -9.368396868348775E-289
        -0x19ac86e85dd1237L    # -7.104458193020214E300
        -0x60f9339eaad01e76L    # -3.24321629210813E-159
        -0x9783b669b19e997L    # -9.355311279989619E262
    .end array-data
.end method

.method public final zzb(Z)V
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzg:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v5, v0, [J

    .line 42
    .line 43
    fill-array-data v5, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const v4, 0xbdfcb8

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    if-ne v3, v4, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 75
    .line 76
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v1, 0x6

    .line 79
    new-array v1, v1, [J

    .line 80
    .line 81
    fill-array-data v1, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    :goto_1
    new-instance v3, Lcom/google/android/gms/common/BlockingServiceConnection;

    .line 96
    .line 97
    invoke-direct {v3}, Lcom/google/android/gms/common/BlockingServiceConnection;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v4, Landroid/content/Intent;

    .line 101
    .line 102
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v2, v2, [J

    .line 105
    .line 106
    fill-array-data v2, :array_3

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v5, v0, [J

    .line 122
    .line 123
    fill-array-data v5, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/4 v5, 0x1

    .line 141
    invoke-virtual {v2, v1, v4, v3, v5}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    .line 143
    .line 144
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    :try_start_4
    iput-object v3, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza:Lcom/google/android/gms/common/BlockingServiceConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    .line 149
    :try_start_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 150
    .line 151
    const-wide/16 v6, 0x2710

    .line 152
    .line 153
    invoke-virtual {v3, v6, v7, v1}, Lcom/google/android/gms/common/BlockingServiceConnection;->getServiceWithTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/internal/ads_identifier/zze;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 158
    .line 159
    .line 160
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    :try_start_6
    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzb:Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 162
    .line 163
    iput-boolean v5, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zzc:Z

    .line 164
    .line 165
    if-eqz p1, :cond_3

    .line 166
    .line 167
    invoke-direct {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zze()V

    .line 168
    .line 169
    .line 170
    :cond_3
    monitor-exit p0

    .line 171
    return-void

    .line 172
    :catchall_1
    move-exception p1

    .line 173
    new-instance v0, Ljava/io/IOException;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 180
    .line 181
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v0, v0, [J

    .line 184
    .line 185
    fill-array-data v0, :array_5

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 200
    .line 201
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v0, v0, [J

    .line 204
    .line 205
    fill-array-data v0, :array_6

    .line 206
    .line 207
    .line 208
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1

    .line 219
    :catchall_2
    move-exception p1

    .line 220
    new-instance v0, Ljava/io/IOException;

    .line 221
    .line 222
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :catch_1
    new-instance p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 227
    .line 228
    const/16 v0, 0x9

    .line 229
    .line 230
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 235
    throw p1

    .line 236
    nop

    .line 237
    :array_0
    .array-data 8
        -0x4a1e9e29f326d079L    # -3.716676557327352E-49
        0x762a8a6e5bd044a3L    # 1.6322977836414064E261
        -0x69f551cefba54ef7L
        0x12abcff3febef846L    # 9.848505434621758E-219
        0x2cfd48680ef823a5L    # 5.615319832823832E-92
        0x21ef5d21db363871L
        0x356f2e5d6dc9b409L    # 2.6043680857858394E-51
        0x16e8048721ec8aaaL
    .end array-data

    .line 238
    :array_1
    .array-data 8
        0x16050681c90fcd7cL
        0x3da9d8777f98350aL    # 1.1753206036304082E-11
        0x707405f801e2cdaeL    # 4.973849543512732E233
        0x251443a2f7a7a327L    # 4.567846081290991E-130
    .end array-data

    :array_2
    .array-data 8
        -0x34bf5494ea02d09aL    # -3.193261485503809E54
        0x46b2343a1068df34L    # 3.6922120728509805E32
        -0x1793e5b6540daae2L    # -1.0257347119404228E195
        0x7b52c244d57b2394L    # 1.115789848012077E286
        0x32575b2f3cdc007aL    # 3.4653168760227793E-66
        -0x733c2085372f9168L    # -3.552845207458791E-247
    .end array-data

    :array_3
    .array-data 8
        0x616a62a30f7dd8e8L    # 1.8547686385851283E161
        0x276adef986844472L    # 8.324831824936342E-119
        0x5fa83260e800b315L    # 6.336443917141803E152
        -0x6cc5a01bb734f5f6L
        0x2da8448ec7b15105L    # 9.530633305485054E-89
        0x1486dbba64c92cdfL    # 8.691149171769991E-210
        -0x100aa2876814e71fL    # -2.0731085909485005E231
        -0x5be449bcd0578c28L    # -9.53167523729648E-135
    .end array-data

    :array_4
    .array-data 8
        -0x711f99a9d6363064L    # -5.03698558831823E-237
        -0x7cb2d635897704f4L    # -9.132508451236851E-293
        0x50b3727515b18155L    # 5.764659791555285E80
        0x3f232e086e66abcaL    # 1.4633038445074762E-4
    .end array-data

    :array_5
    .array-data 8
        -0x5189f1a31a08c66cL    # -7.095941922953321E-85
        0x2097efd6604394f5L
        -0xed68cad48156c04L    # -1.294740098455643E237
        -0x5e7b7aecc07df02fL    # -3.209562082285211E-147
    .end array-data

    :array_6
    .array-data 8
        0x78a31e2482959d03L    # 1.2927743897275289E273
        -0x59fd2e9f183272b0L
        -0x1ba956632c23941cL    # -2.2420549616631417E175
        0x5c4e0e2ef0b21201L    # 4.369086264094619E136
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    const/4 p2, 0x4

    .line 2
    const/4 p3, 0x3

    .line 3
    const/4 p6, 0x2

    .line 4
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmpl-double v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_3

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v2, p3, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v3, p6, [J

    .line 36
    .line 37
    fill-array-data v3, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v3, p6, [J

    .line 62
    .line 63
    fill-array-data v3, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v3, p6, [J

    .line 77
    .line 78
    fill-array-data v3, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v4, p2, [J

    .line 91
    .line 92
    fill-array-data v4, :array_4

    .line 93
    .line 94
    .line 95
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v3, p3, [J

    .line 114
    .line 115
    fill-array-data v3, :array_5

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_1
    if-eqz p7, :cond_2

    .line 137
    .line 138
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v2, p6, [J

    .line 141
    .line 142
    fill-array-data v2, :array_6

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object p7

    .line 156
    invoke-virtual {p7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p7

    .line 160
    invoke-virtual {v0, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array p6, p6, [J

    .line 166
    .line 167
    fill-array-data p6, :array_7

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance p6, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array p2, p2, [J

    .line 180
    .line 181
    fill-array-data p2, :array_8

    .line 182
    .line 183
    .line 184
    invoke-direct {p6, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array p2, p3, [J

    .line 197
    .line 198
    fill-array-data p2, :array_9

    .line 199
    .line 200
    .line 201
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    new-instance p1, Lcom/google/android/gms/ads/identifier/zza;

    .line 216
    .line 217
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/ads/identifier/zza;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;Ljava/util/Map;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 221
    .line 222
    .line 223
    return v1

    .line 224
    :cond_3
    const/4 p1, 0x0

    .line 225
    return p1

    .line 226
    nop

    .line 227
    :array_0
    .array-data 8
        0x40f536d58458e124L    # 86893.34481132455
        0x1c870d1d2b72afccL
        -0x72d486faa485f064L
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_1
    .array-data 8
        0x23532c957baf8b3cL
        -0x1c650967dab10eb5L    # -6.512532898687844E171
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_2
    .array-data 8
        0x6a4a9c065a6bf95eL    # 1.042853584027996E204
        -0x73d12f6c03253a3fL    # -5.379877351629544E-250
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_3
    .array-data 8
        0x155ef9aa95d643fL
        0x1eb0b14265c821e2L    # 7.420644252837514E-161
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_4
    .array-data 8
        0x45641bbcac6c1090L    # 1.9447600559631683E26
        -0x394716807ce2810bL    # -5.052774554582839E32
        0x14621e14fa4d8c26L
        0x16f8dcba03c5bb7bL    # 5.196879546990558E-198
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_5
    .array-data 8
        -0x3b089ceb7590a479L    # -1.7670741901946484E24
        -0x889f8ebdb79b900L    # -2.841085842622135E267
        0x75e91ffdfd763b4cL    # 9.657657859927278E259
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_6
    .array-data 8
        0x28dc3f96e7442badL    # 7.341341382769786E-112
        -0x19b89d378b5677eaL    # -4.968449878202746E184
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_7
    .array-data 8
        0x60052ea913aa4760L    # 3.550097161503182E154
        -0x3df8663fd6e78fdcL    # -1.2670469411054756E10
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :array_8
    .array-data 8
        -0x63cd85ce1df45760L    # -7.470704589479091E-173
        0x4fe05e3659a22d40L    # 5.922771449790893E76
        0x4d4aaa5443bb45f2L    # 2.1938976054860142E64
        -0x51fbfdb7797187dbL    # -5.029153498198675E-87
    .end array-data

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_9
    .array-data 8
        0x79112371e74acc8aL    # 1.483432425649613E275
        -0x3a1399e3915af2aL
        -0x34b57856b01d39fdL    # -5.082124400674846E54
    .end array-data
.end method
