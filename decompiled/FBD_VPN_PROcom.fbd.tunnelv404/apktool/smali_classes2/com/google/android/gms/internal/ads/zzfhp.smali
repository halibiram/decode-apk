.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdiu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcse;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfny;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzehh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdiu;Lcom/google/android/gms/internal/ads/zzcse;Lcom/google/android/gms/internal/ads/zzfny;Lcom/google/android/gms/internal/ads/zzehh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zza:Lcom/google/android/gms/internal/ads/zzdiu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zzb:Lcom/google/android/gms/internal/ads/zzcse;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zzd:Lcom/google/android/gms/internal/ads/zzehh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zza:Lcom/google/android/gms/internal/ads/zzdiu;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbnf;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdiu;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/String;

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 p2, 0x5

    .line 34
    new-array p2, p2, [J

    .line 35
    .line 36
    fill-array-data p2, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zzd:Lcom/google/android/gms/internal/ads/zzehh;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zzc:Lcom/google/android/gms/internal/ads/zzfny;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhp;->zzb:Lcom/google/android/gms/internal/ads/zzcse;

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbnf;->zza(Lcom/google/android/gms/internal/ads/zzcjk;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfhr;

    .line 61
    .line 62
    invoke-direct {v3, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfhr;-><init>(Lcom/google/android/gms/internal/ads/zzcjk;Lcom/google/android/gms/internal/ads/zzcse;Lcom/google/android/gms/internal/ads/zzfny;Lcom/google/android/gms/internal/ads/zzehh;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 66
    .line 67
    invoke-static {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgej;Ljava/util/concurrent/Executor;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        -0x50d7e28ac4a13a69L    # -1.5889115128863836E-81
        -0x1942305d021efaedL    # -8.106904383027578E186
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        -0x3c8348a6d96cf8a7L    # -1.29326286000649616E17
        -0x7787f025cc572f48L    # -7.28742679003166E-268
        -0x505892b23a9ad854L    # -3.9515477321401317E-79
        -0xe31790305fc6959L    # -1.590284852389929E240
        0x71a579a07e4fc137L    # 2.7968029554926485E239
    .end array-data
.end method
