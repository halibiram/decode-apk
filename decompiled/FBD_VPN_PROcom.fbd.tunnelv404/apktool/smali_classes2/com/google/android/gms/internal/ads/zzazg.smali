.class public final Lcom/google/android/gms/internal/ads/zzazg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field zza:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzb:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzazf;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x2

    .line 42
    const/4 v4, 0x0

    .line 43
    if-lt v1, v3, :cond_5

    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/high16 v1, -0x80000000

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_4

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lcom/google/android/gms/internal/ads/zzazf;

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzazf;->zzb()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-le v6, v1, :cond_1

    .line 71
    .line 72
    move v4, v3

    .line 73
    :cond_1
    if-le v6, v1, :cond_2

    .line 74
    .line 75
    move v7, v6

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v7, v1

    .line 78
    :goto_1
    if-le v6, v1, :cond_3

    .line 79
    .line 80
    move-object v2, v5

    .line 81
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    move v1, v7

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    monitor-exit v0

    .line 91
    return-object v2

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/android/gms/internal/ads/zzazf;

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazf;->zzi()V

    .line 109
    .line 110
    .line 111
    :goto_2
    monitor-exit v0

    .line 112
    return-object v1

    .line 113
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1

    .line 115
    :array_0
    .array-data 8
        -0x6197e6ad8c455711L    # -3.347879547882115E-162
        -0x2ea5abbacd566eccL    # -7.992012600921359E83
        -0x271efe7d3b816276L    # -1.3722964795360883E120
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzazf;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    new-array v4, v4, [J

    .line 29
    .line 30
    fill-array-data v4, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zza:I

    .line 63
    .line 64
    add-int/lit8 v2, v1, 0x1

    .line 65
    .line 66
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzazg;->zza:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzazf;->zzj(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazf;->zzn()V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1

    .line 83
    :array_0
    .array-data 8
        0xec0fda3da361430L
        0x4888fad6f1c81303L    # 2.720063955356387E41
        0x5e55a9278ec08f1bL    # 2.7047778266023523E146
        -0xbccb282be2e9878L    # -5.528079564965591E251
        0x52dd5c0871cd1a5L
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzazf;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/google/android/gms/internal/ads/zzazf;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzazf;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazf;->zzd()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazf;->zzd()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return v4

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzO()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzazf;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_0

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazf;->zzf()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazf;->zzf()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_0

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 99
    .line 100
    .line 101
    monitor-exit v0

    .line 102
    return v4

    .line 103
    :cond_2
    monitor-exit v0

    .line 104
    const/4 p1, 0x0

    .line 105
    return p1

    .line 106
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzazf;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazg;->zzc:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method
