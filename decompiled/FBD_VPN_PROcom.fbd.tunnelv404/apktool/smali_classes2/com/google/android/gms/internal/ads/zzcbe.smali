.class public final Lcom/google/android/gms/internal/ads/zzcbe;
.super Lcom/google/android/gms/internal/ads/zzcaj;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    const-wide v3, 0x7c0ad7d1c88a164cL    # 3.2699237562570693E289

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result v0

    .line 4
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcaj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzb:I

    return-void
.end method


# virtual methods
.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zzb:I

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbe;->zza:Ljava/lang/String;

    return-object v0
.end method
