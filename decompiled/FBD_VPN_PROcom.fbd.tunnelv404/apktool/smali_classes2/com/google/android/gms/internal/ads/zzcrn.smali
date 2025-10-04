.class public final Lcom/google/android/gms/internal/ads/zzcrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzfgl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)V
    .locals 3

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
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzfgl;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgl;->zzb(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p1

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    new-array v2, v2, [J

    .line 45
    .line 46
    fill-array-data v2, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_0
    return-void

    .line 61
    :array_0
    .array-data 8
        -0x62e093b9612f1bb5L
        -0x46e5bf19cc8a51aeL    # -1.2640606509991252E-33
        -0x3b6c5b4b2b25a585L    # -2.3190814870578915E22
        0x7a05618a852ed871L    # 6.06421243927142E279
    .end array-data

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
        0x37197c68cbfd3a6dL    # 2.85707650639898E-43
        0x10fabd2e20450550L    # 7.054531822944432E-227
        0x43570c38aff02feaL    # 2.5949448295202728E16
        -0x7c9c707d6f08f2dbL
        0x4ceea4fe3e6bfffeL    # 3.9395056042463208E62
    .end array-data
.end method
