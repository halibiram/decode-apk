.class final Lcom/google/android/gms/internal/ads/zzbxm;
.super Lcom/google/android/gms/internal/ads/zzbxh;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbxq;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxm;->zza:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxh;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->zza:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxm;->zza:Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onSuccess(Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
