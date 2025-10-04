.class public final Lcom/google/android/gms/internal/ads/zzcia;
.super Lcom/google/android/gms/internal/ads/zzchw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchw;-><init>(Lcom/google/android/gms/internal/ads/zzcgl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcdv;->zze(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchw;->zzc:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzcgl;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzchw;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    fill-array-data v2, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v3, 0x4

    .line 56
    new-array v3, v3, [J

    .line 57
    .line 58
    fill-array-data v3, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzchw;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return p1

    .line 73
    :array_0
    .array-data 8
        0x15ec877cfe70324bL    # 4.54970570529722E-203
        -0x3aa1fcf88874cda4L    # -1.4512831771652033E26
        0x4ee4a27785bc9015L    # 1.1393202037970683E72
        -0x34842ec2d238bdb4L    # -4.262994914820841E55
        -0x1eea8b2bc421b489L    # -4.713394991389785E159
        -0x40139a611a3a6787L    # -0.8874048698169325
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x2f1db585e4617a50L    # 9.787466930803549E-82
        0x516e16e661d8f453L    # 1.8266826263398665E84
    .end array-data

    :array_2
    .array-data 8
        0x3f4fd9425fb09084L    # 9.719442454110415E-4
        -0x180d4f210f9a3bafL    # -5.329758091310787E192
        0x69611fa16c277f7dL    # 4.096011080472453E199
        -0x459d3c55f17a1dccL    # -1.89471147776772E-27
    .end array-data
.end method
