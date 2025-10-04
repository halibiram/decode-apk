.class public final Lcom/google/android/gms/internal/ads/zzetq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzexq;

.field private final zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzexq;JLcom/google/android/gms/common/util/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzetq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzetq;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetq;->zzc:Lcom/google/android/gms/internal/ads/zzexq;

    .line 14
    .line 15
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzetq;->zzd:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzetp;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzetp;->zza()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetq;->zzc:Lcom/google/android/gms/internal/ads/zzexq;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzetq;->zzd:J

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzetq;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 22
    .line 23
    new-instance v4, Lcom/google/android/gms/internal/ads/zzetp;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzexq;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzetp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;JLcom/google/android/gms/common/util/Clock;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v4

    .line 38
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzetp;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 39
    .line 40
    return-object v0
.end method
