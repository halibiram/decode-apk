.class final Lcom/google/android/gms/ads/internal/util/zzav;
.super Lcom/google/android/gms/ads/internal/client/zzcz;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/util/zzay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzay;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzav;->zza:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzav;->zzb:Lcom/google/android/gms/ads/internal/util/zzay;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcz;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzav;->zzb:Lcom/google/android/gms/ads/internal/util/zzay;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzav;->zza:Landroid/content/Context;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/google/android/gms/ads/internal/util/zzay;->zzi(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
