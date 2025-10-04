.class public final Lcom/google/android/gms/internal/ads/zzbwz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbwz;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [J

    .line 35
    .line 36
    const-wide v4, -0x6b3cdcb81ee3cc5dL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    aput-wide v4, v3, v6

    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwz;

    .line 60
    .line 61
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzbwz;-><init>(ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :array_0
    .array-data 8
        0x7a5b6137bf945645L    # 2.4849952065377363E281
        -0x15739915e649e516L    # -1.7809680737977355E205
        -0x67fa9d9d2d9d0f8bL    # -5.858794172230915E-193
        0x1b3d0773f1d2ce7aL
    .end array-data

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
        0x52b71141380a6847L    # 2.936820409745107E90
        -0x43f2650175a9af85L    # -2.0061430868004375E-19
        0x6e0ea9cd18cd3852L
    .end array-data
.end method
