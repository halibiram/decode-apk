.class final Lcom/google/android/gms/internal/ads/zzame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzame;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzame;->zzd:Ljava/util/Set;

    return-void
.end method

.method public static zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzame;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v3, v2, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v0, v4, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v5, v1, [J

    .line 40
    .line 41
    const-wide v6, -0xb74b7b17fd2ba71L    # -2.500286086191317E253

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    aput-wide v6, v5, v3

    .line 47
    .line 48
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    move-object v0, v5

    .line 69
    :goto_0
    sget v5, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 70
    .line 71
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v2, v2, [J

    .line 74
    .line 75
    fill-array-data v2, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    aget-object v2, p0, v3

    .line 90
    .line 91
    new-instance v3, Ljava/util/HashSet;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    :goto_1
    array-length v5, p0

    .line 98
    if-ge v4, v5, :cond_1

    .line 99
    .line 100
    aget-object v5, p0, v4

    .line 101
    .line 102
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/2addr v4, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzame;

    .line 108
    .line 109
    invoke-direct {p0, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzame;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :array_0
    .array-data 8
        -0x524c78e968a876c5L    # -1.5338119652991594E-88
        -0x7885fde2aaa2a379L    # -1.2019191000560744E-272
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 8
        -0x69ba17d81e3d9c6dL
        -0x2f9b82a6c1d2f71eL    # -1.8980308554643232E79
    .end array-data
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzame;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzame;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    const-wide v4, 0x2c63bf7bc8b5dabeL    # 7.396293034451226E-95

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    aput-wide v4, v3, v6

    .line 15
    .line 16
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    const-wide v7, -0x4a3ba736978ac8b4L    # -1.087645422515512E-49

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    aput-wide v7, v2, v6

    .line 37
    .line 38
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v2, v6, v1, v3}, Lcom/google/android/gms/internal/ads/zzame;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
