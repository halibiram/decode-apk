.class final Lcom/google/android/gms/internal/ads/zzbmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    const/4 p2, 0x4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzK()Lcom/google/android/gms/internal/ads/zzbja;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbja;->zzb()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array p2, p2, [J

    .line 19
    .line 20
    fill-array-data p2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array p2, p2, [J

    .line 42
    .line 43
    fill-array-data p2, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        0x65c6800a6abc4881L    # 1.8672951972915912E182
        0x531d4867d70859f4L    # 2.386007492358109E92
        -0x29a523e7196bbe10L    # -9.85644973024558E107
        -0x21047f5cac8895d1L    # -3.516656231345515E149
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x4937a0ee8c2eb206L    # -8.537887353832177E-45
        -0xab1d61774ad115dL
        0xc84348d1b0e517L
        -0x60e95b11025e12f9L    # -6.4425923926975E-159
    .end array-data
.end method
