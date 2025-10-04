.class final Lcom/google/android/gms/internal/ads/zzazi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private zza:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/Object;

.field private zzd:Z

.field private zze:Z

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/List;

.field private zzh:Ljava/lang/Runnable;

.field private zzi:Z

.field private zzj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzd:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zze:Z

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzf:Ljava/util/List;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzg:Ljava/util/List;

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzi:Z

    .line 32
    .line 33
    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzazi;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzazi;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzf:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzazi;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzd:Z

    return-void
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzazi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzd:Z

    return p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzazi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zze:Z

    return p0
.end method

.method private final zzk(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x5

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
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zza:Landroid/app/Activity;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x4299ae115e0e8899L    # -6.343739043576723E-13
        0x7adb7e7b9f4d25dbL    # 6.38814885350466E283
        0x1bd587cad098142aL
        -0x128078aa18887b38L
        0x748203c769344395L    # 1.650953677684319E253
    .end array-data
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zza:Landroid/app/Activity;

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
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zza:Landroid/app/Activity;

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzg:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/google/android/gms/internal/ads/zzazx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzazx;->zza()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/16 v4, 0x8

    .line 57
    .line 58
    new-array v4, v4, [J

    .line 59
    .line 60
    fill-array-data v4, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    new-array v3, v3, [J

    .line 77
    .line 78
    const-wide v4, 0x788ee30147a3c4f5L    # 5.221534373547114E272

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    aput-wide v4, v3, v6

    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p1

    .line 101
    :array_0
    .array-data 8
        0x2dfa98a7fae6f8e5L    # 3.3424329522476175E-87
        0x3789f17ffb1ca4c4L    # 3.722689458518044E-41
        -0x2e0fb6a853a59ab4L    # -5.062282452871741E86
        -0x4370d9d8ac928869L    # -5.403496671886308E-17
        -0x3ac65ac8a9369f12L    # -3.1003356784599408E25
        0x35f1072a7ccbd3d8L    # 7.281890600834181E-49
        -0x44a18f21526c80ebL    # -1.0072048194593375E-22
        0x508005ef2f74f966L    # 5.937144307277294E79
    .end array-data
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzk(Landroid/app/Activity;)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzg:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/android/gms/internal/ads/zzazx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :try_start_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzazx;->zzb()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v2

    .line 33
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/16 v5, 0x8

    .line 40
    .line 41
    new-array v5, v5, [J

    .line 42
    .line 43
    fill-array-data v5, :array_0

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
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v4, v0, [J

    .line 59
    .line 60
    const-wide v5, 0xf0eaf992e1e30a3L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    aput-wide v5, v4, v7

    .line 67
    .line 68
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zze:Z

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzh:Ljava/lang/Runnable;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 92
    .line 93
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazh;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzazh;-><init>(Lcom/google/android/gms/internal/ads/zzazi;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzh:Ljava/lang/Runnable;

    .line 99
    .line 100
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzj:J

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    throw v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x72dd1ad498830d0aL    # 1.9872897996743256E245
        0x70df947bb343f9a6L    # 5.020522576522032E235
        -0x384390225efe8bd5L    # -3.7799224001981506E37
        -0x2f0b2c88f731b5aaL    # -9.87746349618647E81
        -0x2dc945e9564b50b7L    # -1.1302619593628026E88
        -0x4f8fe9e557c982a2L    # -2.2227900867132735E-75
        -0x7c882dbef35f6d92L    # -5.967738240411684E-292
        -0x313d3ee4195ca44aL    # -2.588752845197678E71
    .end array-data
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzk(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zze:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzd:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzd:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzh:Ljava/lang/Runnable;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzg:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/google/android/gms/internal/ads/zzazx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    :try_start_1
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzazx;->zzc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v4

    .line 49
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    new-array v7, v7, [J

    .line 58
    .line 59
    fill-array-data v7, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v6, v1, [J

    .line 75
    .line 76
    const-wide v7, 0x5c7d15163c4688fcL    # 3.3821108959876115E137

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    aput-wide v7, v6, p1

    .line 82
    .line 83
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    if-nez v0, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzf:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/google/android/gms/internal/ads/zzazj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    :try_start_3
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzazj;->zza(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception v3

    .line 119
    :try_start_4
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v5, v1, [J

    .line 122
    .line 123
    const-wide v6, 0x2da9ce190c9194aL

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    aput-wide v6, v5, p1

    .line 129
    .line 130
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    const/4 v0, 0x4

    .line 144
    new-array v0, v0, [J

    .line 145
    .line 146
    fill-array-data v0, :array_1

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    monitor-exit v2

    .line 160
    return-void

    .line 161
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    throw p1

    .line 163
    :array_0
    .array-data 8
        -0x418e94b878e4616eL    # -6.48910558860046E-8
        0x46492645f9cba149L    # 3.985098177473876E30
        -0x7c46fb6de0591c79L
        0x2806250a9e7adea7L    # 7.025242945008569E-116
        -0x23f0d3e17e4de415L    # -2.8321580247586527E135
        0x72d8e8609de98d53L    # 1.700711063854917E245
        -0x30326d722e1382d4L    # -2.6752022172282628E76
        0x764b683c357e17fL
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_1
    .array-data 8
        -0x310e0154aed5482aL    # -1.987128898254141E72
        0x10f9942b53dd1d97L    # 6.748437167600555E-227
        0x5f2974473c8bf81cL    # 2.6037993261310502E150
        0x4d794b683a6d4494L    # 1.664892494044654E65
    .end array-data
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzk(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final zza()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zza:Landroid/app/Activity;

    return-object v0
.end method

.method public final zzb()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzf:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final zzg(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzi:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    .line 7
    .line 8
    instance-of v0, p2, Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p2, Landroid/app/Activity;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzazi;->zzk(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzb:Landroid/content/Context;

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzaS:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzj:J

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzi:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazi;->zzf:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
