.class public final Lcom/google/android/gms/internal/ads/zzerc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerc;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzcJ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerc;->zza:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/zzerd;

    .line 22
    .line 23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    new-array v3, v3, [J

    .line 27
    .line 28
    fill-array-data v3, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzerd;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :array_0
    .array-data 8
        -0x5fce4f5868f0c5e2L
        0x6f994d7f6bea3f3cL    # 3.836224531102012E229
        0x59aeec0f2b12615L
        -0x4ede3fba758b1d36L    # -5.023372272270613E-72
        0x21da445ab9d1e8e1L
        -0x67590e9404c9bbbeL    # -6.436710408081592E-190
    .end array-data
.end method
