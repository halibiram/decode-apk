.class final Lcom/google/android/gms/internal/ads/zzels;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzb:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgfg;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzd:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zze:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzemi;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzg:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzh:Ljava/lang/String;

.field private final zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzemh;

.field private zzk:Lcom/google/android/gms/internal/ads/zzfgm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzemh;Lcom/google/android/gms/internal/ads/zzgfg;)V
    .locals 2

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Ljava/util/Set;

    .line 31
    .line 32
    const v0, 0x7fffffff

    .line 33
    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzg:I

    .line 36
    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:Lcom/google/android/gms/internal/ads/zzfgx;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 40
    .line 41
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgp;->zzp:I

    .line 42
    .line 43
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzi:I

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzj:Lcom/google/android/gms/internal/ads/zzemh;

    .line 46
    .line 47
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzels;->zzc:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemo;->zzc(Lcom/google/android/gms/internal/ads/zzfgy;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzh:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:Lcom/google/android/gms/internal/ads/zzfgx;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Ljava/util/List;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-ge p2, p3, :cond_0

    .line 65
    .line 66
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final declared-synchronized zzf()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzj:Lcom/google/android/gms/internal/ads/zzemh;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzk:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzemh;->zzi(Lcom/google/android/gms/internal/ads/zzfgm;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzf:Lcom/google/android/gms/internal/ads/zzemi;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzc:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgfg;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzc:Lcom/google/android/gms/internal/ads/zzgfg;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzh:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeml;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgfg;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v0
.end method

.method private final declared-synchronized zzg(Z)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Integer;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const v2, 0x7fffffff

    .line 38
    .line 39
    .line 40
    :goto_0
    if-nez p1, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Ljava/util/Set;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfgm;->zzat:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    if-ge v2, v1, :cond_3

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :cond_3
    if-le v2, v1, :cond_0

    .line 60
    .line 61
    :cond_4
    monitor-exit p0

    .line 62
    const/4 p1, 0x0

    .line 63
    return p1

    .line 64
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method private final declared-synchronized zzh()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const v1, 0x7fffffff

    .line 38
    .line 39
    .line 40
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-ge v1, v2, :cond_0

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_2
    monitor-exit p0

    .line 48
    const/4 v0, 0x0

    .line 49
    return v0

    .line 50
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method private final declared-synchronized zzi()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzels;->zzg(Z)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzh()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    monitor-exit p0

    .line 22
    return v0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfgm;->zzat:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-object v0

    .line 61
    :cond_2
    monitor-exit p0

    .line 62
    const/4 v0, 0x0

    .line 63
    return-object v0

    .line 64
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v0
.end method

.method public final declared-synchronized zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Ljava/util/Set;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzat:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzd()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzi()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzemi;Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzemi;->zzq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v0, 0x7fffffff

    .line 36
    .line 37
    .line 38
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzg:I

    .line 39
    .line 40
    if-le v0, v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzj:Lcom/google/android/gms/internal/ads/zzemh;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzemh;->zzm(Lcom/google/android/gms/internal/ads/zzfgm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzf:Lcom/google/android/gms/internal/ads/zzemi;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzj:Lcom/google/android/gms/internal/ads/zzemh;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzk:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzemh;->zzm(Lcom/google/android/gms/internal/ads/zzfgm;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzg:I

    .line 61
    .line 62
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzf:Lcom/google/android/gms/internal/ads/zzemi;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzk:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzi()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :cond_4
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    throw p1
.end method

.method public final declared-synchronized zzd()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzc:Lcom/google/android/gms/internal/ads/zzgfg;

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
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final declared-synchronized zze()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzels;->zzd()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Ljava/util/List;

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzi:I

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzels;->zzg(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0
.end method
