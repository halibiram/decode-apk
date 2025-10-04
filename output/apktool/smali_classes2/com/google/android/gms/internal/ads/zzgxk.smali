.class public final Lcom/google/android/gms/internal/ads/zzgxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgse;


# instance fields
.field private final zza:Ljavax/crypto/SecretKey;

.field private final zzb:[B

.field private final zzc:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxo;->zza(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Ljavax/crypto/SecretKey;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxk;->zzb()Ljavax/crypto/Cipher;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x10

    .line 39
    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrl;->zza([B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:[B

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrl;->zza([B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzc:[B

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 8
        -0x33121c542435f2ddL    # -3.8424255469497913E62
        0x622db8e1decc0ed4L    # 8.557926391726767E164
    .end array-data
.end method

.method private static zzb()Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwz;->zza:Lcom/google/android/gms/internal/ads/zzgwz;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljavax/crypto/Cipher;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :array_0
    .array-data 8
        -0x23fbc2d01fbf3d14L    # -1.838812187861465E135
        -0x149461b9c2f3dc2cL    # -2.8374179109363828E209
        -0x3a51819bf7ee2b5bL    # -4.718673666709434E27
        0x76c71a8b6c9fd217L    # 1.4550153073820513E264
    .end array-data

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
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0xc59ac7d4ff33e2aL
        -0x418cf3179211af78L    # -7.096835073625936E-8
        0x2238b6c21b66b3fcL    # 7.916684813007871E-144
        -0x6f77421a864cb611L    # -5.099696115991464E-229
        -0xa06d453ed181d8eL
        -0x1c334f725ffc86c2L    # -5.543613578037604E172
    .end array-data
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    if-gt p2, v1, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Ljavax/crypto/SecretKey;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxk;->zzb()Ljavax/crypto/Cipher;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 13
    .line 14
    .line 15
    array-length v2, p1

    .line 16
    int-to-double v4, v2

    .line 17
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    .line 18
    .line 19
    div-double/2addr v4, v6

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    double-to-int v4, v4

    .line 25
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/lit8 v5, v4, -0x1

    .line 30
    .line 31
    mul-int/lit8 v6, v5, 0x10

    .line 32
    .line 33
    mul-int/lit8 v4, v4, 0x10

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-ne v4, v2, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:[B

    .line 39
    .line 40
    invoke-static {p1, v6, v2, v7, v1}, Lcom/google/android/gms/internal/ads/zzgwp;->zzd([BI[BII)[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    array-length v4, v2

    .line 50
    if-ge v4, v1, :cond_2

    .line 51
    .line 52
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/16 v6, -0x80

    .line 57
    .line 58
    aput-byte v6, v2, v4

    .line 59
    .line 60
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzc:[B

    .line 61
    .line 62
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzgwp;->zzc([B[B)[B

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_0
    new-array v4, v1, [B

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    :goto_1
    if-ge v6, v5, :cond_1

    .line 70
    .line 71
    mul-int/lit8 v8, v6, 0x10

    .line 72
    .line 73
    invoke-static {v4, v7, p1, v8, v1}, Lcom/google/android/gms/internal/ads/zzgwp;->zzd([BI[BII)[B

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    add-int/2addr v6, v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzgwp;->zzc([B[B)[B

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v0, 0x5

    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_0

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 118
    .line 119
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    new-array v0, v0, [J

    .line 123
    .line 124
    fill-array-data v0, :array_1

    .line 125
    .line 126
    .line 127
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    nop

    .line 139
    :array_0
    .array-data 8
        -0x1ba14da653840c05L    # -3.0368889557568758E175
        0x761ef67348562b45L    # 9.521273470239197E260
        -0x6134081dcf184f0eL
        -0x4b5d465c043408bcL    # -3.818355001193932E-55
        0x52a102e983534b0aL    # 1.082899504874618E90
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 8
        0x6c7f097fcdb887d2L    # 4.179440577017968E214
        -0x713435876d94bacL
        0x18cd1a62c7b1c517L
        0x3d1be8b95a525e95L    # 2.4788241023874426E-14
        -0x50d059fa5b90725fL    # -2.0852812521895986E-81
        -0x4da445e6cc42b01aL    # -4.1137985020460025E-66
    .end array-data
.end method
