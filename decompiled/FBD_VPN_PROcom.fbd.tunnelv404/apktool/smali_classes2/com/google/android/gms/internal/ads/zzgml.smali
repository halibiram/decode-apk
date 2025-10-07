.class public final Lcom/google/android/gms/internal/ads/zzgml;
.super Lcom/google/android/gms/internal/ads/zzgmi;
.source "SourceFile"


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmi;-><init>([BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public final zzb([II)[I
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    array-length v3, p1

    .line 6
    const/4 v4, 0x6

    .line 7
    if-ne v3, v4, :cond_0

    .line 8
    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    new-array v5, v3, [I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zza:[I

    .line 14
    .line 15
    new-array v3, v3, [I

    .line 16
    .line 17
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzgme;->zzb([I[I)V

    .line 18
    .line 19
    .line 20
    aget v6, p1, v2

    .line 21
    .line 22
    const/16 v7, 0xc

    .line 23
    .line 24
    aput v6, v3, v7

    .line 25
    .line 26
    aget v1, p1, v1

    .line 27
    .line 28
    const/16 v6, 0xd

    .line 29
    .line 30
    aput v1, v3, v6

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    aget v1, p1, v1

    .line 34
    .line 35
    const/16 v8, 0xe

    .line 36
    .line 37
    aput v1, v3, v8

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    aget v1, p1, v1

    .line 41
    .line 42
    const/16 v9, 0xf

    .line 43
    .line 44
    aput v1, v3, v9

    .line 45
    .line 46
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgme;->zzc([I)V

    .line 47
    .line 48
    .line 49
    aget v1, v3, v7

    .line 50
    .line 51
    const/4 v10, 0x4

    .line 52
    aput v1, v3, v10

    .line 53
    .line 54
    aget v1, v3, v6

    .line 55
    .line 56
    const/4 v11, 0x5

    .line 57
    aput v1, v3, v11

    .line 58
    .line 59
    aget v1, v3, v8

    .line 60
    .line 61
    aput v1, v3, v4

    .line 62
    .line 63
    aget v1, v3, v9

    .line 64
    .line 65
    const/4 v4, 0x7

    .line 66
    aput v1, v3, v4

    .line 67
    .line 68
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzgme;->zzb([I[I)V

    .line 73
    .line 74
    .line 75
    aput p2, v5, v7

    .line 76
    .line 77
    aput v2, v5, v6

    .line 78
    .line 79
    aget p2, p1, v10

    .line 80
    .line 81
    aput p2, v5, v8

    .line 82
    .line 83
    aget p1, p1, v11

    .line 84
    .line 85
    aput p1, v5, v9

    .line 86
    .line 87
    return-object v5

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    mul-int/lit8 v3, v3, 0x20

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p2, v1, v2

    .line 99
    .line 100
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v0, v0, [J

    .line 103
    .line 104
    fill-array-data v0, :array_0

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        -0x4afa6862e1879ca6L    # -2.8179189590140236E-53
        -0x7a0c7823003e424cL    # -5.37975136560597E-280
        -0x33368eee944e0e4bL    # -8.176638151300263E61
        0x5ce3e41ed592404aL    # 2.9609202633414764E139
        -0x6716fbc50f2f51e1L
        0x411b96db36138052L    # 452022.80280876637
        -0x113f534ecd31e44cL    # -3.086040654313602E225
        0x531add3c0922430dL    # 2.188933456791173E92
    .end array-data
.end method
