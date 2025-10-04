.class final Lcom/google/android/gms/internal/ads/zzgah;
.super Lcom/google/android/gms/internal/ads/zzfyb;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/util/Iterator;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxf;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/google/android/gms/internal/ads/zzfxf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Ljava/util/Iterator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgah;->zzb:Lcom/google/android/gms/internal/ads/zzfxf;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfyb;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Ljava/util/Iterator;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgah;->zzb:Lcom/google/android/gms/internal/ads/zzfxf;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zza(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfyb;->zzb()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method
