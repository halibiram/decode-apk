.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfny;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzehh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfny;Lcom/google/android/gms/internal/ads/zzehh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zza:Lcom/google/android/gms/internal/ads/zzfny;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzb:Lcom/google/android/gms/internal/ads/zzehh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 17
    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    move-object v4, p2

    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 p2, 0x5

    .line 30
    new-array p2, p2, [J

    .line 31
    .line 32
    fill-array-data p2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjb;->zzD()Lcom/google/android/gms/internal/ads/zzfgm;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzaj:Z

    .line 51
    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zza:Lcom/google/android/gms/internal/ads/zzfny;

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzfny;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfmz;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzb:Lcom/google/android/gms/internal/ads/zzehh;

    .line 62
    .line 63
    new-instance v6, Lcom/google/android/gms/internal/ads/zzehj;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    check-cast p1, Lcom/google/android/gms/internal/ads/zzckj;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzckj;->zzP()Lcom/google/android/gms/internal/ads/zzfgp;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    move-object v0, v6

    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzehj;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/ads/zzehh;->zzd(Lcom/google/android/gms/internal/ads/zzehj;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x48a934fdf4481d51L    # -4.0882938687708434E-42
        0x31d83cdee486d507L    # 1.4047329388565512E-68
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 8
        -0x7c6976b1bd1b26e9L
        -0x13e5bf937ee6d661L    # -5.523491053139681E212
        -0x7aa30e19c597ef42L    # -7.786036349085896E-283
        0x769091991e5c8e80L    # 1.3043248850289226E263
        0x3aedb13d297018daL    # 7.675289868976397E-25
    .end array-data
.end method
