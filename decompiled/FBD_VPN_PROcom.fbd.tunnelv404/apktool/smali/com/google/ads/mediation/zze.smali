.class final Lcom/google/ads/mediation/zze;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/formats/zzi;
.implements Lcom/google/android/gms/ads/formats/zzg;
.implements Lcom/google/android/gms/ads/formats/zzf;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field final zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onAdLoaded()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/mediation/zza;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/ads/mediation/zza;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 9
    .line 10
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbkh;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->zze(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/internal/ads/zzbkh;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbkh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/zze;->zzb:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/zze;->zza:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->zzd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/internal/ads/zzbkh;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
