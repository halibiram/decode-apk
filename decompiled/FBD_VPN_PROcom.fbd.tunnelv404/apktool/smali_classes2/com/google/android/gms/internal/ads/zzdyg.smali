.class final Lcom/google/android/gms/internal/ads/zzdyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdyi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzi(Lcom/google/android/gms/internal/ads/zzdyi;Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x6

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 49
    .line 50
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyi;->zza(Lcom/google/android/gms/internal/ads/zzdyi;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    sub-long/2addr v2, v4

    .line 55
    long-to-int v3, v2

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {p1, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdyi;->zzk(Lcom/google/android/gms/internal/ads/zzdyi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzceu;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Ljava/lang/Exception;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p1

    .line 79
    :array_0
    .array-data 8
        -0x55063bb41672adc8L
        0x4e433f9e85e3ef4fL    # 1.0378777472690505E69
        0x15ba72ab31b281a5L    # 5.272232433750863E-204
        0x3e216d8c55bddf39L    # 2.028877217214504E-9
        0x46564caced128118L    # 7.066997963373646E30
        -0x6f7d22baf5865b35L    # -3.888255566100864E-229
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
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
    :array_1
    .array-data 8
        0x3b5b37d2dc22c162L    # 9.005701019933029E-23
        0x7e2602c0404597abL    # 4.606387462755278E299
        0xfb0cde3b69796a7L
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzi(Lcom/google/android/gms/internal/ads/zzdyi;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 11
    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x6

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v4, v0, [J

    .line 30
    .line 31
    const-wide v5, -0x5d62bf6d424a8b12L    # -5.997098330091948E-142

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    aput-wide v5, v4, v7

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 55
    .line 56
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdyi;->zza(Lcom/google/android/gms/internal/ads/zzdyi;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    sub-long/2addr v4, v6

    .line 61
    long-to-int v5, v4

    .line 62
    invoke-static {v1, v2, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzdyi;->zzk(Lcom/google/android/gms/internal/ads/zzdyi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzh(Lcom/google/android/gms/internal/ads/zzdyi;)Ljava/util/concurrent/Executor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyf;

    .line 72
    .line 73
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdyf;-><init>(Lcom/google/android/gms/internal/ads/zzdyg;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        0x2b54268b6c9afaedL    # 5.757960414856107E-100
        0x785e308242787cdfL    # 6.379576479706137E271
        -0x355b1733f32912a4L    # -3.9115608417219906E51
        0xd3115dc06cbd708L
        -0x23e37ae1726dcc94L    # -5.1823596412253825E135
        -0x68aebb5105a96da4L    # -2.310108051403303E-196
    .end array-data
.end method
