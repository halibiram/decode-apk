.class public final Lcom/google/android/gms/internal/ads/zzawb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawb;->zza:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawb;->zza:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawb;->zza:Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawb;->zza:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
