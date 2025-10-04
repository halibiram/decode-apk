.class public final Lcom/google/android/gms/internal/ads/zzcvz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzddm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdft;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddm;Lcom/google/android/gms/internal/ads/zzdft;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzdft;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zza:Lcom/google/android/gms/internal/ads/zzddm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzb:Lcom/google/android/gms/internal/ads/zzdft;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzddm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zza:Lcom/google/android/gms/internal/ads/zzddm;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdft;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzb:Lcom/google/android/gms/internal/ads/zzdft;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdim;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzb:Lcom/google/android/gms/internal/ads/zzdft;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdim;

    .line 6
    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 8
    .line 9
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdim;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvy;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcvy;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdim;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
