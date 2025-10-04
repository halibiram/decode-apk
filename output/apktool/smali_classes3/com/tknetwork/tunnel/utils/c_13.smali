.class public final Lcom/tknetwork/tunnel/utils/c_13;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AES_MODE:Ljava/lang/String;

.field private static final CHARSET:Ljava/lang/String;

.field public static DEBUG_LOG_ENABLED:Z

.field private static final HASH_ALGORITHM:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final ivBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tknetwork/tunnel/utils/c_13;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/tknetwork/tunnel/utils/c_13;->AES_MODE:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v2, v1, [J

    .line 38
    .line 39
    fill-array-data v2, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/tknetwork/tunnel/utils/c_13;->CHARSET:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/tknetwork/tunnel/utils/c_13;->HASH_ALGORITHM:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    const/16 v1, 0x10

    .line 69
    .line 70
    new-array v1, v1, [B

    .line 71
    .line 72
    fill-array-data v1, :array_4

    .line 73
    .line 74
    .line 75
    sput-object v1, Lcom/tknetwork/tunnel/utils/c_13;->ivBytes:[B

    .line 76
    .line 77
    sput-boolean v0, Lcom/tknetwork/tunnel/utils/c_13;->DEBUG_LOG_ENABLED:Z

    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x11121a7e3a92edc2L    # -2.2132337020488477E226
        0x4932d7296b3bae67L    # 4.201566491632018E44
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
    :array_1
    .array-data 8
        0x25a905c39a215325L
        -0x22c7176f1e71ca1dL    # -1.1864921739404571E141
        -0x25bd1a92a21e48bdL    # -6.395620266503531E126
        -0x34488d511cbe2eddL    # -5.749428230328698E56
    .end array-data

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
    :array_2
    .array-data 8
        -0x3eca9dd697b6dd9L    # -4.710998148262372E289
        -0x6ba2f2ecddd954fbL    # -1.380718756429931E-210
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
    :array_3
    .array-data 8
        0x6a61909a761d9d4eL    # 2.753541897309436E204
        -0x6b110b787a67a085L
    .end array-data

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
    .line 136
    .line 137
    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    array-length v1, p0

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    new-array v1, v1, [C

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, p0

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    aget-byte v3, p0, v2

    .line 18
    .line 19
    and-int/lit16 v4, v3, 0xff

    .line 20
    .line 21
    mul-int/lit8 v5, v2, 0x2

    .line 22
    .line 23
    ushr-int/lit8 v4, v4, 0x4

    .line 24
    .line 25
    aget-char v4, v0, v4

    .line 26
    .line 27
    aput-char v4, v1, v5

    .line 28
    .line 29
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0xf

    .line 32
    .line 33
    aget-char v3, v0, v3

    .line 34
    .line 35
    aput-char v3, v1, v5

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/c_13;->generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    .line 2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;[B)V

    .line 5
    sget-object v0, Lcom/tknetwork/tunnel/utils/c_13;->ivBytes:[B

    invoke-static {p0, v0, p1}, Lcom/tknetwork/tunnel/utils/c_13;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B

    move-result-object p0

    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;[B)V

    .line 7
    new-instance p1, Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_4

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 9
    sget-boolean p1, Lcom/tknetwork/tunnel/utils/c_13;->DEBUG_LOG_ENABLED:Z

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_5

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 11
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x7c0d7c685ebe06c3L
        0x7b2310a1c030d20aL
        -0x50c8d2558b882e3fL    # -3.054388662631582E-81
        -0x6ebc8ca3b3fc34a0L
    .end array-data

    :array_1
    .array-data 8
        -0x4c5572c33377460aL    # -8.261584528222807E-60
        0x62eeae0a3fe8451L
        -0xf3af2080c47e81cL    # -1.673604742076367E235
        0x1d78ce0d903a5feeL
    .end array-data

    :array_2
    .array-data 8
        0x116b0d4fa109c013L    # 9.13550515306529E-225
        -0x6c3c9ac8c6119971L
        -0x2691352dad149777L    # -6.361067205666031E122
    .end array-data

    :array_3
    .array-data 8
        0x20f1439020160539L    # 5.274017065502745E-150
        -0x64fc9d47b391eeddL
    .end array-data

    :array_4
    .array-data 8
        -0xabd14aaa19ef483L    # -7.101837410889067E256
        -0x431a32b777be6535L    # -2.420495804269392E-15
    .end array-data

    :array_5
    .array-data 8
        -0x59a000fbf6914d91L    # -7.562747345245023E-124
        -0x1bfe8142a8314215L    # -5.40883041297389E173
    .end array-data

    :array_6
    .array-data 8
        -0xa87204e5cc09397L    # -7.469620170938003E257
        -0x63cdb4f6d9d9580L    # -3.393464021915535E278
        -0x24b30420c88e7934L    # -6.429016894250797E131
        0x10310002f83d643cL
        -0x6473c9163500d8a8L
    .end array-data
.end method

.method public static decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B
    .locals 2

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 13
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x2

    .line 14
    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 15
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 16
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x3

    new-array p2, p2, [J

    fill-array-data p2, :array_1

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;[B)V

    return-object p0

    nop

    :array_0
    .array-data 8
        0x4fdf6b9b5777e7a7L    # 5.684729228335647E76
        -0x413a116e64e57c2eL    # -2.6144873224863397E-6
        -0x30f42fe0580be5dfL    # -6.142660929383246E72
        0x22d9336ccafb2695L    # 8.266424881135424E-141
    .end array-data

    :array_1
    .array-data 8
        0x54133d386192408cL    # 1.0273639237475077E97
        0x4840383fee60bf61L    # 1.1038573176159353E40
        0x3ac210d603d32a3L
    .end array-data
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/c_13;->generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/tknetwork/tunnel/utils/c_13;->ivBytes:[B

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/tknetwork/tunnel/utils/c_13;->encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    sget-boolean p1, Lcom/tknetwork/tunnel/utils/c_13;->DEBUG_LOG_ENABLED:Z

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 8
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x180e7b0aa4053b9eL    # -4.995692512459854E192
        0x3e5093b9e84a3c5bL    # 1.543858598129685E-8
    .end array-data

    :array_1
    .array-data 8
        -0x55e8be56b965a0f8L    # -6.33761260838486E-106
        0x28a9140165c61da8L    # 8.146800225344603E-113
    .end array-data

    :array_2
    .array-data 8
        0x73db25d387d77015L    # 1.2148157190744056E250
        -0x21e385e42d40d0c3L    # -2.222449825923476E145
        0x1931d31386be7d7fL    # 2.560356669262148E-187
    .end array-data

    :array_3
    .array-data 8
        0x61a43a1d89de9012L    # 2.2749897202321613E162
        0x6406af77c9914960L    # 7.013493027606916E173
    .end array-data

    :array_4
    .array-data 8
        0x11b30b12e567c9c5L    # 2.057900896549034E-223
        0x6c20758426bc0174L    # 6.926146224921324E212
        0x496581ad424332e6L    # 3.8368967278542515E45
        -0x4487c7a824f475fL    # -8.951130175804027E287
        0x1acfd735fbc4f619L
    .end array-data
.end method

.method public static encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B
    .locals 2

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 10
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 12
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x3

    new-array p2, p2, [J

    fill-array-data p2, :array_1

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;[B)V

    return-object p0

    nop

    :array_0
    .array-data 8
        0xc285700417ec8dcL
        -0x33cb6de77a3c09ecL    # -1.2912429308211306E59
        0x3175c266895dd269L    # 1.9704593582937733E-70
        0x7a80e1af5c3e33e2L    # 1.225742086410067E282
    .end array-data

    :array_1
    .array-data 8
        0x7a1bc15f24d0b928L    # 1.5744280506310026E280
        -0x6d86ff72e2184616L    # -1.10667624334186E-219
        0x753b239fc81f9f85L    # 5.093691914722713E256
    .end array-data
.end method

.method private static generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    array-length v2, p0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lcom/tknetwork/tunnel/utils/c_13;->log(Ljava/lang/String;[B)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :array_0
    .array-data 8
        -0x595164aaf15b8f8bL    # -2.314990565460978E-122
        -0x5fdcd92c9ef4b77dL    # -7.141981369676367E-154
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        0x358940cf6829a3dcL    # 8.436970954568996E-51
        -0x7c8c010b6c1d619dL    # -5.009398638671487E-292
        -0x34d502f182cc97b4L    # -1.292492483873455E54
    .end array-data

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
    .line 98
    .line 99
    .line 100
    .line 101
    :array_2
    .array-data 8
        0x27467d4dca78298dL    # 1.741850657887154E-119
        0x2f02589f29c50c14L    # 3.022016354601431E-82
    .end array-data
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p0, 0x2

    .line 3
    sget-boolean v0, Lcom/tknetwork/tunnel/utils/c_13;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, p0, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, p0, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, p0, [J

    fill-array-data v0, :array_2

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p0, p0, [J

    fill-array-data p0, :array_3

    invoke-direct {p1, p0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        -0x3e6d6afaf7484d47L    # -7.793901017939271E7
        -0x2258d8048af04aceL
    .end array-data

    :array_1
    .array-data 8
        -0x29e191597d76e02fL    # -6.9796273348821464E106
        0x5dd13719a8334c19L    # 8.397130573470218E143
    .end array-data

    :array_2
    .array-data 8
        0x6e29346263a25cc0L    # 4.5554058556927034E222
        -0xbe88c48663d2e02L
    .end array-data

    :array_3
    .array-data 8
        -0x781e9ef8b0617443L
        0x128c58208e1c223aL
    .end array-data
.end method

.method private static log(Ljava/lang/String;[B)V
    .locals 2

    const/4 p0, 0x2

    .line 1
    sget-boolean v0, Lcom/tknetwork/tunnel/utils/c_13;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, p0, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, p0, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    array-length v0, p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, p0, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_13;->bytesToHex([B)Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p0, p0, [J

    fill-array-data p0, :array_3

    invoke-direct {p1, p0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    :cond_0
    return-void

    :array_0
    .array-data 8
        -0x1e7cb41b8b55ee7eL    # -5.425817891874337E161
        0x1e5a6c3e071473d9L
    .end array-data

    :array_1
    .array-data 8
        -0x12dfeae14dc382b7L    # -4.435273776063264E217
        -0x2103029c197026e9L    # -3.7068342741122685E149
    .end array-data

    :array_2
    .array-data 8
        0x77f47eeb2a4ad8b9L    # 6.767378928546313E269
        -0x5692b5554172d5f4L
    .end array-data

    :array_3
    .array-data 8
        0x3b894a3fb226777L    # 9.852743041200015E-291
        0x48b30e1f756d8f6L
    .end array-data
.end method
