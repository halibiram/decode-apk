.class public final Lcom/google/android/gms/internal/ads/zzczu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdax;
.implements Lcom/google/android/gms/internal/ads/zzdhz;
.implements Lcom/google/android/gms/internal/ads/zzdfp;
.implements Lcom/google/android/gms/internal/ads/zzdbn;
.implements Lcom/google/android/gms/internal/ads/zzayq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgm;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgfg;

.field private zzf:Ljava/util/concurrent/ScheduledFuture;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdbp;Lcom/google/android/gms/internal/ads/zzfgm;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfg;->zze()Lcom/google/android/gms/internal/ads/zzgfg;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzd:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzh:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzdbp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzdbp;

    return-object p0
.end method

.method private final zzm()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0xef09484aadb55c1L
        0x1a623ed4fef6d3e8L
        -0x7dcca963e63c3628L    # -4.62022398601137E-298
        -0xff48a74c79a9a4eL    # -5.328854480267197E231
        0x3b4e9a47fcf9c512L    # 5.062785566496253E-23
        0x38308d7611f960edL    # 4.86436691040684E-38
        0x2c09980754229d53L    # 1.4977772217223676E-96
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzbB(Lcom/google/android/gms/internal/ads/zzbzu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzby(Lcom/google/android/gms/internal/ads/zzayp;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkQ:Lcom/google/android/gms/internal/ads/zzbfu;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczu;->zzm()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzayp;->zzj:Z

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 40
    .line 41
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzf:I

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    if-eq p1, v0, :cond_0

    .line 45
    .line 46
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbp;->zza()V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x39744d7742941982L    # 6.256221958777959E-32
        0x6deaf4e8fefff428L    # 3.0450416509285134E221
        -0x3f9483ed439f4e42L    # -219.87728709111792
        -0x502c4276a7ab74a3L    # -2.6637691069584954E-78
        0x48de359bcd7a6bdbL    # 1.0526442562571276E43
        0x4eefd56e7ade6e65L    # 1.7576659223041305E72
    .end array-data
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzf:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzZ:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkQ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczu;->zzm()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    return-void

    .line 42
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbp;->zza()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final synthetic zzh()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdb;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 15
    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfg;->zzc(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzj()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdb;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzf:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfg;->zzc(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v0
.end method

.method public final zzk()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzf:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzbw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 28
    .line 29
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzZ:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_2

    .line 33
    .line 34
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzr:I

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zza:Lcom/google/android/gms/internal/ads/zzdbp;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbp;->zza()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/internal/ads/zzczt;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzczt;-><init>(Lcom/google/android/gms/internal/ads/zzczu;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzd:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgej;Ljava/util/concurrent/Executor;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/gms/internal/ads/zzczs;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzczs;-><init>(Lcom/google/android/gms/internal/ads/zzczu;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzb:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 64
    .line 65
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfgm;->zzr:I

    .line 66
    .line 67
    int-to-long v2, v2

    .line 68
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzf:Ljava/util/concurrent/ScheduledFuture;

    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public final zzl()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzp(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zzf:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczu;->zze:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Exception;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfg;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method
