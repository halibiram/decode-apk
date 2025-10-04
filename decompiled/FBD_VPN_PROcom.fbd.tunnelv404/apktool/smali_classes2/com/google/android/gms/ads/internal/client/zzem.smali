.class public final Lcom/google/android/gms/ads/internal/client/zzem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/os/Bundle;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzb:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzem;->zzc:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v5, v1, [J

    .line 37
    .line 38
    const-wide v6, -0x48f7690a4f5d790dL    # -1.378299593392023E-43

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    aput-wide v6, v5, v0

    .line 44
    .line 45
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object v0

    .line 57
    :catch_0
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v1, v1, [J

    .line 60
    .line 61
    const-wide v3, 0x2f2e84d9ad669037L    # 2.0108548434063108E-81

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    aput-wide v3, v1, v0

    .line 67
    .line 68
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0x5532207c02a4ee5L    # -8.383949228506066E282
        -0xdfed25f55636cd1L    # -1.4318088051471438E241
        0x2778016ad47df639L
    .end array-data
.end method
