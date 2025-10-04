.class final Lcom/google/android/gms/internal/ads/zzboy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzboq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboy;->zza:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbow;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceu;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbox;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbox;-><init>(Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzboy;->zza:Lcom/google/android/gms/internal/ads/zzboq;

    .line 14
    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbow;->zze(Lcom/google/android/gms/internal/ads/zzboq;Lcom/google/android/gms/internal/ads/zzbov;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
