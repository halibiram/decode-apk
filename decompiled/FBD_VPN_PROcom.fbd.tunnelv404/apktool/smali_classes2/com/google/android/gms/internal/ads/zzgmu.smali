.class public final Lcom/google/android/gms/internal/ads/zzgmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# static fields
.field private static final zza:[B

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B

.field private static final zze:[B

.field private static final zzf:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzg:Ljavax/crypto/SecretKey;

.field private final zzh:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zza:[B

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/lang/String;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zzb:[B

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zzc:[B

    .line 63
    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    fill-array-data v1, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/lang/String;)[B

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zzd:[B

    .line 84
    .line 85
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v1, 0x6

    .line 88
    new-array v1, v1, [J

    .line 89
    .line 90
    fill-array-data v1, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/lang/String;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zze:[B

    .line 105
    .line 106
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmt;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmt;-><init>()V

    .line 109
    .line 110
    .line 111
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zzf:Ljava/lang/ThreadLocal;

    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        -0x5a530308336924f5L
        0x6c98dc0b743dcdc0L
    .end array-data

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
    .line 126
    .line 127
    :array_1
    .array-data 8
        0x5acc0501fc6aee07L    # 2.4277809113588754E129
        0x21d7fd6e81db9f0fL
        -0x2a9a0e594a70fe9fL    # -2.457442335196004E103
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_2
    .array-data 8
        0x65e238dcc382a67L
        0x7319cb1754681f1eL
        -0x5ae621c7ee42accdL    # -5.831032430674548E-130
        -0x627968e94829739dL
        0x67c0b0c55e26a702L    # 5.949177189225086E191
    .end array-data

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
    .line 164
    .line 165
    .line 166
    .line 167
    :array_3
    .array-data 8
        -0x6fa853d5766144ceL    # -6.099129971967965E-230
        0x13cd424d861ad839L
        -0x327e4e9768d82fccL    # -2.3291132567526495E65
        0x386cb26fcedd1392L    # 6.746636639513825E-37
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        -0x654ff36b73944e38L    # -3.867714532960311E-180
        0x2233fc1f5d23fe9cL    # 6.401814000057954E-144
        0x32eee8bf8f928992L    # 2.3480011684540717E-63
        -0x7459a5be020bb9ddL    # -1.524407580234371E-252
        -0x6e4b710ca585d09dL
        -0x21287cfc6b3ce668L
    .end array-data
.end method

.method private constructor <init>([B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmu;->zzh:[B

    .line 5
    .line 6
    array-length p2, p1

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgxo;->zza(I)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 26
    .line 27
    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmu;->zzg:Ljavax/crypto/SecretKey;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x56f198cf1109ae1fL    # 6.612334637645639E110
        0x2b8e28ce18e9658cL    # 6.89436159596935E-99
    .end array-data
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgjm;)Lcom/google/android/gms/internal/ads/zzgfs;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmu;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjm;->zzc()Lcom/google/android/gms/internal/ads/zzgxr;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjm;->zzb()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgmu;-><init>([B[B)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static bridge synthetic zzc(Ljavax/crypto/Cipher;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmu;->zze(Ljavax/crypto/Cipher;)Z

    move-result p0

    return p0
.end method

.method private static zzd([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p1, v0, p0, v1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method private static zze(Ljavax/crypto/Cipher;)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgmu;->zzd:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgmu;->zzd([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    .line 12
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgmu;->zzc:[B

    .line 13
    .line 14
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v6, v0, [J

    .line 17
    .line 18
    fill-array-data v6, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zzb:[B

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zze:[B

    .line 40
    .line 41
    array-length v2, v0

    .line 42
    invoke-virtual {p0, v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zza:[B

    .line 47
    .line 48
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return p0

    .line 53
    :catch_0
    return v1

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x5b9e97f6a40ac309L    # 2.171544767716629E133
        0xea149c577500ac8L
    .end array-data
.end method

.method private final zzf([B[B)[B
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmu;->zzf:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljavax/crypto/Cipher;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    if-lt v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/16 v3, 0xc

    .line 18
    .line 19
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmu;->zzd([BII)Ljava/security/spec/AlgorithmParameterSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v4, 0x2

    .line 24
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgmu;->zzg:Ljavax/crypto/SecretKey;

    .line 25
    .line 26
    invoke-virtual {v0, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    array-length v2, p2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, -0xc

    .line 38
    .line 39
    invoke-virtual {v0, p1, v3, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/16 v0, 0x8

    .line 70
    .line 71
    new-array v0, v0, [J

    .line 72
    .line 73
    fill-array-data v0, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :array_0
    .array-data 8
        0x1073e8a2eb79d04fL
        0x470b30e4f941fe5dL    # 1.7647964000502212E34
        0x69c2c4fde01a09e4L
        -0x2f36a119e739331dL    # -1.5041158064774092E81
    .end array-data

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
    :array_1
    .array-data 8
        -0x634bdfa8757eb9ecL
        -0x1cccf2dd76ce0478L    # -7.1898921389757E169
        -0x329418fb962e27caL    # -9.182708922592428E64
        -0x464ec55ba93b58a4L    # -8.49458740350593E-31
        -0x5fe57a6d0acc4a70L
        0x3ec3e3ed38d56aa2L    # 2.3711131179997717E-6
        0x3ba48c1b989577cbL    # 2.175529594806608E-21
        0x3bd90aaedb428927L    # 2.121117087294632E-20
    .end array-data
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmu;->zzh:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmu;->zzf([B[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzb([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmu;->zzh:[B

    .line 18
    .line 19
    array-length v1, p1

    .line 20
    array-length v0, v0

    .line 21
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmu;->zzf([B[B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 31
    .line 32
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :array_0
    .array-data 8
        -0x550a324193ca73f1L    # -9.734898115438912E-102
        -0x2cb805fb0452a0faL    # -1.5629208092795816E93
        0x62e8d62c71f5b7e8L    # 2.9291391979137366E168
        0x4a1445e353eebf5cL    # 7.407255672631566E48
        0x654882dc4b62c9aaL    # 7.946054517296838E179
        -0x220d2a416aa1966aL    # -3.6748715329282885E144
        0x589303d9cb9a0f76L
    .end array-data
.end method
