.class public final Lcom/google/android/gms/internal/ads/zzcax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zze()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return v1

    .line 31
    :array_0
    .array-data 8
        0x770b6a273825053eL
        -0x4285ef2de30a2a42L    # -1.4816638481460748E-12
        -0x1999b3d903278648L    # -1.894885345616783E185
        -0x2470758b0a679928L
        -0x72cbe76a9cc415bL    # -1.041698863589938E274
        0x4b964ec292574c13L    # 1.3674553601036206E56
        0x5ef7a473c879a10fL    # 3.023077459831379E149
    .end array-data
.end method

.method public final getType()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzf()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x6

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v1

    .line 31
    :array_0
    .array-data 8
        -0x6eeb56869748a8beL
        0x23673fe9d52b1d16L    # 3.904708680101424E-138
        0x3ea162edee16c3c4L    # 5.181563801829097E-7
        0x6c1532541c3360f0L    # 4.4598790074024005E212
        0x6262afe006e1a626L    # 8.608896680506947E165
        -0x5ddfc7ca2c5a5465L
    .end array-data
.end method
