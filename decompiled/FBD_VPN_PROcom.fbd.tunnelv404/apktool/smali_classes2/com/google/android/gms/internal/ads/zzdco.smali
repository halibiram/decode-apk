.class public final Lcom/google/android/gms/internal/ads/zzdco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhhu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhhu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zza:Lcom/google/android/gms/internal/ads/zzhhu;

    return-void
.end method

.method public static zzc(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdcn;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcn;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdcn;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdcn;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdco;->zza:Lcom/google/android/gms/internal/ads/zzhhu;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhhr;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhhr;->zzc()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcn;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcn;-><init>(Ljava/util/Set;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdco;->zza()Lcom/google/android/gms/internal/ads/zzdcn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
