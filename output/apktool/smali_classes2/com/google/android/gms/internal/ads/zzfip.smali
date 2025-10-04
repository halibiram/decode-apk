.class public final Lcom/google/android/gms/internal/ads/zzfip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdba;


# instance fields
.field private final zza:Ljava/util/HashSet;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcdp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfip;->zza:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfip;->zzb:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfip;->zzc:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zzb()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfip;->zzc:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfip;->zzb:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzcdp;->zzn(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfip;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final declared-synchronized zzbK(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfip;->zzc:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfip;->zza:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdp;->zzl(Ljava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public final declared-synchronized zzc(Ljava/util/HashSet;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfip;->zza:Ljava/util/HashSet;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfip;->zza:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method
