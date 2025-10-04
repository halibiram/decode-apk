.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final PLAYBACK_STATE_ENDED:I = 0x3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_READY:I = 0x5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_UNKNOWN:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzdq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPlaybackState()I
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzh()I

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :catch_0
    move-exception v1

    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/16 v4, 0x8

    .line 23
    .line 24
    new-array v4, v4, [J

    .line 25
    .line 26
    fill-array-data v4, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw v1

    .line 43
    :array_0
    .array-data 8
        0x6c6c5619f10ed8adL    # 1.9078779431544803E214
        -0x61d9a27113b07c8L
        -0x32b6095d45b67f85L    # -2.1361463400746386E64
        -0x505635fa61e84bbdL    # -4.349988884654495E-79
        0x1cd5aa939a952c1dL    # 8.970311040550396E-170
        0xe786a9dcfbf3638L
        -0x15c25c12bac4ddf4L    # -5.80818252302495E203
        0x3611864eb4c61125L    # 2.997711054998153E-48
    .end array-data
.end method

.method public getVideoLifecycleCallbacks()Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public hasVideoContent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public isClickToExpandEnabled()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzo()Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :catch_0
    move-exception v1

    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x6

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x4f28be39a4cae735L    # -2.056712118567045E-73
        0x67aae8ce4e585a9cL    # 2.3979009832225235E191
        0x7b55328dfe7a0b29L    # 1.2608403969576283E286
        -0x59ae9a8da1baa26aL    # -4.111857862706733E-124
        0x5a1920c1c01baa9eL    # 1.0631030758157182E126
        -0x3f0781b5042fc243L    # -100324.68647789113
    .end array-data
.end method

.method public isCustomControlsEnabled()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzp()Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :catch_0
    move-exception v1

    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x7

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x6e60377003f8fd6dL    # -8.586659290346286E-224
        -0x32edb6c058e0048bL    # -1.88061913511926E63
        0x20674395be29d7eL
        0x640ef4c3c43d7cdaL    # 9.570484560938559E173
        0x2c7fd60043945680L    # 2.3847291948996722E-94
        -0xc269a14be840e78L
        0x224768f10a37f9c4L
    .end array-data
.end method

.method public isMuted()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzq()Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :catch_0
    move-exception v1

    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x7

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x191037620b64d04L    # -1.037571209407896E301
        -0x50746b98f5cdf102L    # -1.1630025110426244E-79
        0x5dc401f79d96fa62L    # 4.879606272092514E143
        0x5ddc97e25ccc64c9L    # 1.394704466477902E144
        0x6517d45f9089520bL    # 9.656369774253329E178
        0x657c9ffe1f12648fL    # 7.423735263191577E180
        -0x24ec6088db29eb70L    # -5.440785269609258E130
    .end array-data
.end method

.method public mute(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzj(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1

    .line 39
    :array_0
    .array-data 8
        0x2c4163f86beccfa4L    # 1.628334729571392E-95
        0x20d46c8b9793bc15L
        0x2f0182ea55005baL    # 1.5750005383860626E-294
        0x7af53de2e56bc756L
        -0x600b05ca44c10f38L    # -9.778529088308428E-155
        0x3f8253dde9a22992L    # 0.008949025814463583
    .end array-data
.end method

.method public pause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzk()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x7

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v1

    .line 39
    :array_0
    .array-data 8
        0x5a8152802f405c34L    # 9.38065014470789E127
        -0x39649490eb137908L    # -1.3903421270479904E32
        0x4faf02ffc3addfdfL    # 7.013498610514984E75
        -0xd6201f6dad6f8c5L
        -0x5e2adc75064f7ff1L
        0x11881873d387bb51L    # 3.254838877039486E-224
        0x7fbeaa645a975efcL    # 2.153411227039391E307
    .end array-data
.end method

.method public play()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzl()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v1

    .line 39
    :array_0
    .array-data 8
        0x3ecc228cf7ea8310L    # 3.3539490112564064E-6
        0x3cbb494f041ff4f1L    # 3.7867434105325114E-16
        -0x1dafe8fb660fc6c7L    # -3.706221356561861E165
        0x29c9898a08503116L
        -0x1514240249a4e12L
        -0x2100c4bb4d595357L    # -3.9934747814589663E149
    .end array-data
.end method

.method public setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzfj;

    .line 19
    .line 20
    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/client/zzfj;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v2

    .line 24
    :goto_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzm(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    :try_start_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x2f63772c3732c6c8L    # -2.1146030314655553E80
        -0x3547e9fe01d6ef02L    # -9.011630472739785E51
        -0x1c7bf01c41ccbc12L    # -2.422831805949096E171
        -0x5e2dbf717ebd88deL    # -9.135592480431403E-146
        0x51667b149ef05c9eL    # 1.3647724557076043E84
        0x7da973180b4e81cL
        0x2e462f24f2bb9e18L    # 8.921424100173755E-86
        -0x69adb7f89899ec73L
        0x399931a5c7622ab2L    # 3.1053923481852853E-31
    .end array-data
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdq;->zzn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v1

    .line 39
    :array_0
    .array-data 8
        0x298256a58998fe33L    # 9.760555086462269E-109
        -0x3d0a1e6a7044a756L    # -3.849379367950186E14
        0xe7109db468719c2L
        -0x76d5269a7f23f28dL
        -0x24bc15505d8a16ddL    # -4.4178038605050954E131
        0x39e50d774c00bc44L    # 8.30378716825927E-30
    .end array-data
.end method

.method public final zza()Lcom/google/android/gms/ads/internal/client/zzdq;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/internal/client/zzdq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzb:Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method
