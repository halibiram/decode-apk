.class final Lcom/google/android/gms/internal/ads/zzaco;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzacn;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaco;->zza:Lcom/google/android/gms/internal/ads/zzacn;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaco;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final varargs zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzacu;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaco;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaco;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    move-object v1, v2

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaco;->zza:Lcom/google/android/gms/internal/ads/zzacn;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacn;->zza()Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    monitor-exit v0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v3, 0x5

    .line 32
    new-array v3, v3, [J

    .line 33
    .line 34
    fill-array-data v3, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :catch_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaco;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    .line 53
    .line 54
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    if-nez v1, :cond_1

    .line 57
    .line 58
    return-object v2

    .line 59
    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/zzacu;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    .line 65
    return-object p1

    .line 66
    :catch_2
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    throw p1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x74075b4177a9540eL
        0x14b09fd150b9277aL
        -0x291e2221e27912caL    # -3.356850911226522E110
        0x55d7828a74e5cefeL    # 3.3699988039743254E105
        0x7d1261e8bdf052a1L    # 2.935075990955182E294
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
    :array_1
    .array-data 8
        0x247dde09249ecc41L    # 6.574735442894686E-133
        -0x62aaa780a8c8128dL
        -0x8dc7c8ab27cbd16L    # -7.865051194945652E265
        -0x7544bfd25b7f625fL
        0x193337e94761c1b8L    # 2.760577910802071E-187
        -0x46a69c23847ed186L    # -1.9559808490770386E-32
    .end array-data
.end method
