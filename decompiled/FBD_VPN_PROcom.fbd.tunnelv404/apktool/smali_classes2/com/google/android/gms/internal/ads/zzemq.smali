.class public final Lcom/google/android/gms/internal/ads/zzemq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzemh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzemh;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemq;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzemh;)Lcom/google/android/gms/internal/ads/zzemq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemq;-><init>(Lcom/google/android/gms/internal/ads/zzemh;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzemj;Lcom/google/android/gms/internal/ads/zzeis;Lcom/google/android/gms/internal/ads/zzfny;)Lcom/google/android/gms/internal/ads/zzemh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemq;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemh;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzemh;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzemj;Lcom/google/android/gms/internal/ads/zzeis;Lcom/google/android/gms/internal/ads/zzfny;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
