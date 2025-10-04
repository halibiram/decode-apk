.class final Lcom/google/android/gms/internal/ads/zzgdb$zzg;
.super Lcom/google/android/gms/internal/ads/zzgdb$zza;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgdb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgda;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdd;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgda;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)Lcom/google/android/gms/internal/ads/zzgdb$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzh(Lcom/google/android/gms/internal/ads/zzgdb;)Lcom/google/android/gms/internal/ads/zzgdb$zzd;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdb;->zzm(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)Lcom/google/android/gms/internal/ads/zzgdb$zzk;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzi(Lcom/google/android/gms/internal/ads/zzgdb;)Lcom/google/android/gms/internal/ads/zzgdb$zzk;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdb;->zzo(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgdb$zzk;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdb$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgdb$zzk;->next:Lcom/google/android/gms/internal/ads/zzgdb$zzk;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgdb$zzk;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgdb$zzk;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)Z
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdb$zzd;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzh(Lcom/google/android/gms/internal/ads/zzgdb;)Lcom/google/android/gms/internal/ads/zzgdb$zzd;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzgdb;->zzm(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgdb;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzj(Lcom/google/android/gms/internal/ads/zzgdb;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzgdb;->zzn(Lcom/google/android/gms/internal/ads/zzgdb;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)Z
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdb$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzgdb$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzi(Lcom/google/android/gms/internal/ads/zzgdb;)Lcom/google/android/gms/internal/ads/zzgdb$zzk;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzgdb;->zzo(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method
