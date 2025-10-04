.class public final synthetic Lcom/google/android/gms/internal/ads/zztd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztm;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zztd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztd;->zza:Lcom/google/android/gms/internal/ads/zztd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzsv;

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zztn;->zza:I

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    new-array v2, v1, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 51
    .line 52
    const/16 v1, 0x1a

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-ge v0, v1, :cond_1

    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    const/4 v2, -0x1

    .line 79
    nop

    .line 80
    :cond_1
    :goto_0
    return v2

    .line 81
    :array_0
    .array-data 8
        -0x2c4d59ee4a4968bbL    # -1.555992107372777E95
        -0x32fd6894f0eb0102L    # -9.560112715405218E62
        0x601c6d71f6474ac8L    # 9.528768259938115E154
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        -0x3cc72cc7474fcf59L    # -6.987640011239591E15
        0x439548d67aabf606L    # 3.8342787386975885E17
        -0x3e6bb1b7a37c1fcbL    # -8.516866312878497E7
    .end array-data

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
    :array_2
    .array-data 8
        -0x67333fbea6bed868L    # -3.226455261570807E-189
        -0x2a8a8eaa1d75b157L    # -4.8026212098646185E103
        0x5034917514487f25L    # 2.3816340088869096E78
        -0x62f1da7a7b3d0472L    # -9.985051912507413E-169
        -0x76d7cb5c1caf1f4aL
    .end array-data
.end method
