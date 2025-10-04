.class public final synthetic Lcom/google/android/gms/internal/ads/zzfdc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfde;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfje;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcxp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/internal/ads/zzcxp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzb:Lcom/google/android/gms/internal/ads/zzfje;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzc:Lcom/google/android/gms/internal/ads/zzcxp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzb:Lcom/google/android/gms/internal/ads/zzfje;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfgy;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfje;->zzb:Lcom/google/android/gms/internal/ads/zzfgy;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:Lcom/google/android/gms/internal/ads/zzfgx;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfgm;->zza:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    new-array v4, v4, [J

    .line 50
    .line 51
    fill-array-data v4, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzc:Lcom/google/android/gms/internal/ads/zzcxp;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxp;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_2
    return-object p1

    .line 89
    :array_0
    .array-data 8
        0x6bb0b5bc70760dcbL    # 5.49352372796104E210
        0x6e36e8c09bb63c6bL    # 8.281071287059469E222
        0x375342d38cb74d7dL    # 3.4547797071983106E-42
        -0x69d005374ce4bfbdL    # -8.159927198056105E-202
    .end array-data
.end method
