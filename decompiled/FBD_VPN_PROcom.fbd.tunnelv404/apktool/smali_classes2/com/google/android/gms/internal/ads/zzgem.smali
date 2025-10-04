.class public final Lcom/google/android/gms/internal/ads/zzgem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgaa;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzgaa;Lcom/google/android/gms/internal/ads/zzgel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:Lcom/google/android/gms/internal/ads/zzgaa;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgea;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzgea;-><init>(Lcom/google/android/gms/internal/ads/zzfzv;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
