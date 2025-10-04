.class public final Lcom/google/android/gms/internal/ads/zzazk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzazi;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zza:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza()Landroid/app/Activity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazi;->zza()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final zzb()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazi;->zzb()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzazi;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzazi;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzf(Lcom/google/android/gms/internal/ads/zzazj;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzc:Z

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    :cond_0
    instance-of v2, v1, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Landroid/app/Application;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-nez v1, :cond_2

    .line 26
    .line 27
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    new-instance v2, Lcom/google/android/gms/internal/ads/zzazi;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzazi;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 57
    .line 58
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 59
    .line 60
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzg(Landroid/app/Application;Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzc:Z

    .line 65
    .line 66
    :cond_4
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p1

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x3f432b9113f116L
        0x7ef340d1d4b98d01L    # 3.3007954253576014E303
        0x13e8746071d25331L    # 9.080161602876235E-213
        -0x6885cb481c3913f3L    # -1.402304795476838E-195
        -0x39003b7aba18761aL    # -1.0309194617305533E34
        0x7432ffaa7698bba6L    # 5.44101795327357E251
    .end array-data
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazk;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazk;->zzb:Lcom/google/android/gms/internal/ads/zzazi;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzh(Lcom/google/android/gms/internal/ads/zzazj;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method
