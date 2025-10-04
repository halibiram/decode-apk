.class public final Lcom/google/android/gms/internal/ads/zzgxr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgxq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxq;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/ads/zzghc;)Lcom/google/android/gms/internal/ads/zzgxr;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgxr;-><init>(Lcom/google/android/gms/internal/ads/zzgxq;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzgxr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxr;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->zzb(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxr;-><init>(Lcom/google/android/gms/internal/ads/zzgxq;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zza()I

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxq;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
