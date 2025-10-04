.class public final synthetic Lcom/google/android/gms/internal/ads/zzacl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacn;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzacl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzacl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacl;->zza:Lcom/google/android/gms/internal/ads/zzacl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/reflect/Constructor;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

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
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v1, 0x7

    .line 55
    new-array v1, v1, [J

    .line 56
    .line 57
    fill-array-data v1, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-class v1, Lcom/google/android/gms/internal/ads/zzacu;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x1

    .line 78
    new-array v1, v1, [Ljava/lang/Class;

    .line 79
    .line 80
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    aput-object v2, v1, v3

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :cond_0
    return-object v2

    .line 91
    :array_0
    .array-data 8
        0x7e0aeb6b40b9eb02L    # 1.40842718648965E299
        -0x1c08ee0b5e9e7ca9L    # -3.5662167151686475E173
        0x3f0fbf67fb710254L    # 6.055389479131938E-5
        -0x8e8f1614e030118L    # -4.646661600963812E265
        -0x3abe93b05eb0f16eL    # -4.212644685981125E25
        -0xebd6d87ba5b6f4cL    # -3.779277006571744E237
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
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        -0xa5b15897ada0c6L
        0x47da1e8d8396db2cL    # 1.388742681659799E38
        0x418e0772f9c6c548L    # 6.297558322205597E7
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 8
        -0x18f6fd3c507fa918L    # -2.176480915286638E188
        -0x3bde94ea9d089f1aL    # -1.6065541580212686E20
        -0x5e9a4de892cae989L    # -8.4836980602385E-148
        0x7c59de376662f157L    # 1.0083684113803573E291
        -0x3ec8e1abf11f10e1L    # -1515092.0581197215
        -0x28543046fdc870ffL    # -2.1402844051445635E114
        -0x29dced9429cc9a5L    # -9.294930346677657E295
    .end array-data
.end method
