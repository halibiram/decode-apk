.class public Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;
.super Lcom/trilead/ssh2/signature/KeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$RSACertificateDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
        "Ljava/security/interfaces/RSAPublicKey;",
        "Ljava/security/interfaces/RSAPrivateKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v2, 0x2

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
    const-class v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        -0x79e5d2a1173c293bL
        0x7d0b6bf946f14c3cL    # 2.189179149948097E294
        -0x15da4c843ceba879L    # -2.126223838549394E203
    .end array-data

    .line 38
    .line 39
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
    :array_1
    .array-data 8
        0x412fcb98bcce8a7fL    # 1041868.3687632828
        -0x7a647ed5805fd7c9L    # -1.183773696480721E-281
    .end array-data
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;->decodePublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    const/4 v0, 0x5

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v2, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/IOWarningException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 8
        0x121b5d7329f770L
        -0x430b08fc4546f721L    # -4.655143083434699E-15
    .end array-data

    :array_1
    .array-data 8
        0x4b5084d37c03b80cL    # 6.328766756151368E54
        0x6940ae4581933528L    # 9.975224411256668E198
        -0x204582061a66b6d8L    # -1.3875035664982103E153
        -0x5cb68a7b31b049ffL    # -1.068942471830349E-138
        -0x3995ab6efbe95284L    # -1.668883423798004E31
    .end array-data

    :array_2
    .array-data 8
        -0x2f06fa6b48bdbbdbL    # -1.1867449562511453E82
        0x2c9b81ee27f95b75L    # 8.242009641247148E-94
        0x28e37e86b383cc9fL
        0x7b15365de8f84ddL
        0xd3b071ce64a629L
    .end array-data

    :array_3
    .array-data 8
        -0x4b24c56b6e253915L    # -4.4419100689532734E-54
        0x67aefabc1daff6b3L    # 2.7605824819051248E191
        0x29c39cdfead5c802L
        0x5328e12c122bb31dL    # 4.0544477542585277E92
        0x4895e2ada307349L
    .end array-data

    :array_4
    .array-data 8
        -0x23a85902bbd8b70eL    # -6.876563615369838E136
        0x115fa859063a6e0dL    # 5.345414097569733E-225
        0x5b50995b4d3f4509L    # 7.363788997431054E131
        -0x3526b2ceab30b5eL    # -3.689977656614501E292
    .end array-data
.end method

.method public decodeSignature([B)[B
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    array-length v2, p1

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_1

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
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 77
    .line 78
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0xa8656067f75d24aL
        -0x646cc89f5b974c03L    # -7.587395572552678E-176
        0x22b7f740e5ee4e96L
        0x31b36c4e0c97b7f9L    # 2.814224829511365E-69
        0x40ed4292d5110340L    # 59924.58850908885
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
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        -0x6401f0f2fb1fe516L    # -7.595809144828183E-174
        -0x1d3bf560739ae45L    # -5.912675230195762E299
        0x2e9c8a3a6617baabL    # 3.672776368270592E-84
        0x571ead0a98e6652aL
        0x544ecfe44a95e9f1L    # 1.3162839489608534E98
        -0x12ace1ad31a6ead6L    # -4.218029105418948E218
    .end array-data

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
    .line 136
    .line 137
    .line 138
    .line 139
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
    :array_2
    .array-data 8
        0x607cf205caaa2057L    # 6.209510005914947E156
        0x62e23291b45ba3e3L    # 2.1461505074261316E168
        -0x2651fbcf79c5c875L    # -9.921248761950594E123
        0x14fd16ffce4d3b6bL
        0x22e5c3448f9ba35fL
    .end array-data
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0

    .line 1
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;->encodePublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 2

    .line 2
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 5
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public encodeSignature([B)[B
    .locals 4

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-le v1, v3, :cond_0

    .line 17
    .line 18
    aget-byte v1, p1, v2

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    array-length v1, p1

    .line 23
    sub-int/2addr v1, v3

    .line 24
    invoke-virtual {v0, p1, v3, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    array-length v1, p1

    .line 29
    invoke-virtual {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public getCertificateDecoders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$RSACertificateDecoder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$RSACertificateDecoder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$1;

    .line 8
    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    new-array v5, v4, [J

    .line 13
    .line 14
    fill-array-data v5, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, p0, v3}, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm$1;-><init>(Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-array v3, v4, [Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 28
    .line 29
    aput-object v0, v3, v1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v2, v3, v0

    .line 33
    .line 34
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :array_0
    .array-data 8
        0x682ff5bf2a7d8b5bL    # 7.290768292825195E193
        0x4d4938a00ae70d24L    # 2.075079323468662E64
    .end array-data
.end method
