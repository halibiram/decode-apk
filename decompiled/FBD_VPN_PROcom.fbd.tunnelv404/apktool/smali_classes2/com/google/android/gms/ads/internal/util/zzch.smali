.class public final Lcom/google/android/gms/ads/internal/util/zzch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    .line 38
    .line 39
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    new-array v1, v1, [J

    .line 66
    .line 67
    fill-array-data v1, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbxy;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0x196a491bfe949e8L
        0x5b07eac8be74806bL    # 3.315714467441458E130
        0x29fa309ef09b9b46L    # 1.78425039747563E-106
        -0x53b66d98d96b3d8L
    .end array-data

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
    :array_1
    .array-data 8
        0x2108fb9ac83fceL
        0x23126f1e321e44b8L    # 9.674819866994676E-140
        0x57aefc33e3d0b69aL    # 2.38452682294389E114
        -0x53af01b353e6463fL    # -3.182295985917506E-95
        -0x72d2fabf8ea00e92L
        0x2edf6ee056b3413aL    # 6.472149888697158E-83
    .end array-data
.end method
