.class public final Lcom/google/android/gms/internal/ads/zzdtx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtw;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzdtw;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtw;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtw;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzbvg;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbvg;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    const-wide v1, 0x1449b11112a9a291L    # 6.105276375614008E-211

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-wide v1, v0, v3

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfif;)V
    .locals 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzfif;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    :goto_0
    move-object v2, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfif;->zze()Lcom/google/android/gms/internal/ads/zzbvg;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzfho; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_4

    .line 26
    :catch_0
    nop

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    if-nez p2, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfif;->zzf()Lcom/google/android/gms/internal/ads/zzbvg;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfho; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :catch_1
    :goto_2
    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzjk:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    const/4 v4, 0x1

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/4 v3, 0x0

    .line 56
    if-nez p2, :cond_4

    .line 57
    .line 58
    :catch_2
    const/4 v4, 0x0

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :try_start_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfif;->zzC()Z
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzfho; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_3
    :try_start_6
    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzbvg;Z)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 74
    throw p1
.end method

.method public final declared-synchronized zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbus;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbus;->zzf()Lcom/google/android/gms/internal/ads/zzbvg;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbus;->zzg()Lcom/google/android/gms/internal/ads/zzbvg;

    .line 17
    .line 18
    .line 19
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtw;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzbvg;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    throw p1
.end method
