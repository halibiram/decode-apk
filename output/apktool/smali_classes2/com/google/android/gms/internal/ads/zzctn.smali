.class public final Lcom/google/android/gms/internal/ads/zzctn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazj;


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private zzc:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:J

.field private zze:J

.field private zzf:Ljava/lang/Runnable;

.field private zzg:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzd:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zze:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzf:Ljava/lang/Runnable;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzg:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/internal/ads/zzazk;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Lcom/google/android/gms/internal/ads/zzazj;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctn;->zzc()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctn;->zzb()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final declared-synchronized zzb()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzg:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzc:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzc:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzd:J

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sub-long/2addr v2, v4

    .line 31
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zze:J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-wide/16 v2, -0x1

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zze:J

    .line 39
    .line 40
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method public final declared-synchronized zzc()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzg:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zze:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzc:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzf:Ljava/lang/Runnable;

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zze:J

    .line 29
    .line 30
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzc:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public final declared-synchronized zzd(ILjava/lang/Runnable;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzf:Ljava/lang/Runnable;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    int-to-long v2, p1

    .line 11
    add-long/2addr v0, v2

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzd:J

    .line 13
    .line 14
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    invoke-interface {v0, p2, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzc:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method
