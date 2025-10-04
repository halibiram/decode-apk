.class public final Lcom/google/android/gms/internal/ads/zzbax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/concurrent/ScheduledFuture;

.field private final zzb:Ljava/lang/Runnable;

.field private final zzc:Ljava/lang/Object;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbba;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzbbd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Ljava/util/concurrent/ScheduledFuture;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbat;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzb:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbax;)Lcom/google/android/gms/internal/ads/zzbba;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzbax;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzbax;Lcom/google/android/gms/internal/ads/zzbba;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    return-void
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzbax;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzl()V

    return-void
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzbax;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

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
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 29
    .line 30
    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzbax;Lcom/google/android/gms/internal/ads/zzbbd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    return-void
.end method

.method private final zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zze:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbav;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbaw;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbaw;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzbba;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbbb;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 5
    .line 6
    const-wide/16 v2, -0x2

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-wide v2

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzp()Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zze(Lcom/google/android/gms/internal/ads/zzbbb;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    monitor-exit v0

    .line 29
    return-wide v1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v4, 0x6

    .line 34
    new-array v4, v4, [J

    .line 35
    .line 36
    fill-array-data v4, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-wide v2

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1

    .line 53
    :array_0
    .array-data 8
        0x6e0339fe9c79b3caL    # 8.687363365524656E221
        -0x77ddd6eede9cd2cdL
        0xa20c913e068443L
        0x4dd5428d491e9949L    # 8.95574394991379E66
        0x6b448845ab4b9455L    # 5.273572124150139E208
        0x61317e1c0511b200L    # 1.537065764514595E160
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbay;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbay;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbay;-><init>()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbba;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzp()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzg(Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbay;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    return-object p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzf:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzf(Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbay;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    monitor-exit v0

    .line 42
    return-object p1

    .line 43
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v2, 0x6

    .line 46
    new-array v2, v2, [J

    .line 47
    .line 48
    fill-array-data v2, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbay;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbay;-><init>()V

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-object p1

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    throw p1

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x730febe3f8db0b0aL
        -0x1e1a289dcd7772afL    # -3.9304926148037623E163
        0x7a6010cdbd574d27L    # 2.9162447925003986E281
        -0x3c7273a7640f669bL    # -2.66146768827395232E17
        0x742292af94d11743L    # 2.6595506178971706E251
        0x344b1e6bd4b6fb30L    # 8.640558656660817E-57
    .end array-data
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzbba;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbba;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zze:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzbba;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public final zzi(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zze:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zze:Landroid/content/Context;

    .line 20
    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzef:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzl()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzee:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbau;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbau;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/internal/ads/zzazk;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Lcom/google/android/gms/internal/ads/zzazj;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public final zzj()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzeg:Lcom/google/android/gms/internal/ads/zzbfu;

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
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzl()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzb:Ljava/lang/Runnable;

    .line 39
    .line 40
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzeh:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v1

    .line 68
    :cond_1
    return-void
.end method
