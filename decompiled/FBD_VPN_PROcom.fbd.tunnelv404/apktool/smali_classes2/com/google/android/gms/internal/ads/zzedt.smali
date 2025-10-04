.class public final Lcom/google/android/gms/internal/ads/zzedt;
.super Lcom/google/android/gms/internal/ads/zzedw;
.source "SourceFile"


# instance fields
.field private zzh:Lcom/google/android/gms/internal/ads/zzbyi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzedw;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zze:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzf:Landroid/os/Looper;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final declared-synchronized onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzc:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzd:Lcom/google/android/gms/internal/ads/zzbyh;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zzp()Lcom/google/android/gms/internal/ads/zzbyu;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzh:Lcom/google/android/gms/internal/ads/zzbyi;

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzedv;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzedv;-><init>(Lcom/google/android/gms/internal/ads/zzedw;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyu;->zzf(Lcom/google/android/gms/internal/ads/zzbyi;Lcom/google/android/gms/internal/ads/zzbyx;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 60
    .line 61
    new-instance v1, Lcom/google/android/gms/internal/ads/zzecf;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzecf;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    throw p1

    .line 75
    :array_0
    .array-data 8
        -0x33c0a5e99ea9270cL    # -1.9679909097613906E59
        -0x81fc31db74011cfL    # -2.680736136304883E269
        -0x2f22776ad1a78126L    # -3.5018226845371517E81
        0x5fdf03b07bd04c56L    # 6.497426169093114E153
        0x5b5545703c40def3L    # 9.436501297909224E131
        0x6a107b6a1c258638L    # 8.074382513874944E202
        -0x25c0a8d578933342L    # -5.3037618581193077E126
    .end array-data
.end method

.method public final onConnectionSuspended(I)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    new-array v3, v3, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecf;

    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzecf;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        0x2480663043ae216eL    # 7.219945072385904E-133
        0x1471618b6dd60825L
        0x1121d473569266f6L    # 3.763239037168954E-226
        -0x757337530ef38394L    # -7.488299293818831E-258
        0x68af7112ec06cd34L    # 1.8361710879691948E196
        -0x1215f57c2416286cL    # -2.9416143165530506E221
        0x2ec70b54f4a47766L    # 2.3724336311068862E-83
        0x515b1a59342e4f0cL    # 8.226876038837069E83
    .end array-data
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbyi;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 7
    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzb:Z

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedt;->zzh:Lcom/google/android/gms/internal/ads/zzbyi;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedw;->zzb()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 29
    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedw;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeds;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzeds;-><init>(Lcom/google/android/gms/internal/ads/zzedt;)V

    .line 41
    .line 42
    .line 43
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 44
    .line 45
    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-object p1

    .line 50
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p1
.end method
