.class public final Lcom/google/android/gms/internal/ads/zzhgs;
.super Lcom/google/android/gms/internal/ads/zzhgv;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhgv;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhgs;->zza:Ljava/util/logging/Logger;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhgs;->zza:Ljava/util/logging/Logger;

    .line 34
    .line 35
    invoke-virtual {v3, v0, v1, v2, p1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 8
        0x76e0e8b7d91e2275L    # 4.259567948084432E264
        -0x2dd38433cced2bf6L    # -7.082774235726483E87
        -0x25cea89f0a7a775cL    # -2.934677818003536E126
        0x2b85969d454da93cL    # 4.9350394575424975E-99
        -0x5c8d49a28db5d8f9L    # -6.285366943188777E-138
        0x12c7be5575390cb1L    # 3.363084153444847E-218
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
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
    :array_1
    .array-data 8
        0x61105cecb4ebe692L    # 3.594515004653026E159
        0x7d841e910a326ddbL    # 4.1118833444277236E296
    .end array-data
.end method
