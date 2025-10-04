.class public final Lcom/google/android/gms/ads/query/ReportingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbxq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;Lcom/google/android/gms/ads/query/zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbxq;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zza(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)Lcom/google/android/gms/internal/ads/zzbxp;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbxq;-><init>(Lcom/google/android/gms/internal/ads/zzbxp;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public recordClick(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxq;->zza(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public recordImpression(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxq;->zzb(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reportTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxq;->zzc(Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateClickUrl(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbxq;->zzd(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateImpressionUrls(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbxq;->zze(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
