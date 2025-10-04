.class public final Lcom/google/android/gms/internal/ads/zzrs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/ads/zzur;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrs;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzur;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzur;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzur;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzrs;
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/ads/zzur;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzrs;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzur;)V

    return-object p1
.end method

.method public final zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzrt;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrr;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrr;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzrt;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzrt;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzrr;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrr;->zzb:Lcom/google/android/gms/internal/ads/zzrt;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrs;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
