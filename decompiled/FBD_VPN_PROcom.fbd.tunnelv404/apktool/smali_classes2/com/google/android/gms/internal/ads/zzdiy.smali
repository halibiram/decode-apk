.class public final Lcom/google/android/gms/internal/ads/zzdiy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfny;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzq:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzb:Lcom/google/android/gms/internal/ads/zzfny;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzb:Lcom/google/android/gms/internal/ads/zzfny;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zza:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfny;->zzd(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zzc:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method
