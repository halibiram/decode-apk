.class abstract Lcom/google/android/gms/internal/ads/zzafg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzaea;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzfp;)Z
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/ads/zzfp;J)Z
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfp;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzafg;->zza(Lcom/google/android/gms/internal/ads/zzfp;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzafg;->zzb(Lcom/google/android/gms/internal/ads/zzfp;J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
