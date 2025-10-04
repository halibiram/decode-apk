.class public final Lcom/google/android/gms/internal/ads/zzblu;
.super Lcom/google/android/gms/internal/ads/zzbkz;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/zzi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkz;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblu;->zza:Lcom/google/android/gms/ads/formats/zzi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzblj;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblk;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzblk;-><init>(Lcom/google/android/gms/internal/ads/zzblj;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzblu;->zza:Lcom/google/android/gms/ads/formats/zzi;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/formats/zzi;->zza(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
