.class public final Lcom/google/android/gms/internal/ads/zzflt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzceh;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzceh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflt;->zzb:Lcom/google/android/gms/internal/ads/zzceh;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflt;->zzb:Lcom/google/android/gms/internal/ads/zzceh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceh;->zza(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfls;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfls;-><init>(Lcom/google/android/gms/internal/ads/zzflt;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflt;->zza:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
