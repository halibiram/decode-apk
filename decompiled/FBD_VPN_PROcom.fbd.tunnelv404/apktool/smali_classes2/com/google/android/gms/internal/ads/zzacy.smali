.class public final Lcom/google/android/gms/internal/ads/zzacy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzacv;[BII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_1

    .line 3
    .line 4
    add-int v1, p2, v0

    .line 5
    .line 6
    sub-int v2, p3, v0

    .line 7
    .line 8
    invoke-interface {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzacv;->zzb([BII)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/2addr v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    return v0
.end method

.method public static zzb(ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p0, 0x0

    .line 5
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzacv;[BIIZ)Z
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzacv;->zzm([BIIZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    return p2

    .line 11
    :cond_0
    throw p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzacv;[BII)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzack;

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :catch_0
    return v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzacv;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzack;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :catch_0
    return v0
.end method
