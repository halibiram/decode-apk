.class final Lcom/google/android/gms/internal/ads/zzgea;
.super Lcom/google/android/gms/internal/ads/zzgdm;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgdz;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfzv;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgdm;-><init>(Lcom/google/android/gms/internal/ads/zzfzv;ZZ)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgdy;

    .line 6
    .line 7
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzgdy;-><init>(Lcom/google/android/gms/internal/ads/zzgea;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgea;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgdm;->zzv()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzgea;Lcom/google/android/gms/internal/ads/zzgdz;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgea;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    return-void
.end method


# virtual methods
.method public final zzf(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    return-void
.end method

.method public final zzq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgea;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgew;->zzh()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgea;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdz;->zzf()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdm;->zzy(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgea;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    .line 9
    .line 10
    :cond_0
    return-void
.end method
