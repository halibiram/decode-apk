.class public final Lcom/google/android/gms/internal/ads/zzbwj;
.super Lcom/google/android/gms/internal/ads/zzblf;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzblf;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;->onUnconfirmedClickCancelled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;->onUnconfirmedClickReceived(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
