.class public final Lcom/google/android/gms/internal/ads/zzevg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevg;->zza:Lcom/google/android/gms/internal/ads/zzfgl;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevg;->zza:Lcom/google/android/gms/internal/ads/zzfgl;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzevh;-><init>(Lcom/google/android/gms/internal/ads/zzfgl;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
