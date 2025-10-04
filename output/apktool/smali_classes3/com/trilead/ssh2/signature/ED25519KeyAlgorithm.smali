.class public Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;
.super Lcom/trilead/ssh2/signature/KeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
        "Lnet/i2p/crypto/eddsa/EdDSAPublicKey;",
        "Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final ED25519_CURVE_NAME:Ljava/lang/String;

.field private static final ED25519_KEY_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;->ED25519_KEY_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;->ED25519_CURVE_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x7a2fe6bf68fc1285L
        -0x649b109f86295165L
        0x20d64ba9dd8802bcL    # 1.70278797738526E-150
    .end array-data

    :array_1
    .array-data 8
        -0x7d5a7a27ee950d60L    # -6.58193531334342E-296
        0x45b0f4f636efbb99L    # 5.247900772681026E27
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;

    .line 31
    .line 32
    invoke-direct {v2}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;-><init>()V

    .line 33
    .line 34
    .line 35
    const-class v3, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 36
    .line 37
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/security/Provider;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0x271e938f417196faL    # 2.96024843655312E-120
        0x55534f34b902f988L    # 1.0812030792631242E103
        -0x243266094d109f50L    # -1.6808952163958173E134
    .end array-data

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
    :array_1
    .array-data 8
        0x7ac0286f5630890bL    # 1.8771205597992734E283
        0x5813139c5060a242L    # 1.8791411638634854E116
        -0x1dd17a916ea4298eL    # -8.787989145592633E164
    .end array-data
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;->decodePublicKey([B)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .locals 4

    .line 2
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    return-object v0

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x141f3d566b2ec79aL    # 9.279584358401636E-212
        -0x2ee2d44513a9924eL    # -5.534106099822665E82
        -0x5eaed8c8c8d9f97eL    # -3.353721119209931E-148
    .end array-data

    :array_1
    .array-data 8
        0x12316d8e4a95d3edL    # 4.821359966949073E-221
        0x134c5e994c6d21beL
    .end array-data

    :array_2
    .array-data 8
        -0x3692c7fb2ce256eL
        0x1aee726398ee67b8L    # 5.869954066708923E-179
        0x34078303a84c0789L    # 4.6820522330201496E-58
        0x6a3c3447f63da377L    # 5.526767903807044E203
        -0x408ca9feaeca7d41L    # -0.004720692773248102
    .end array-data

    :array_3
    .array-data 8
        -0x4c9274f9f766b5b2L
        -0x605b8596f734ddfdL    # -2.983069015408483E-156
        -0x2c881b22e1e8adefL    # -1.246027150153824E94
    .end array-data
.end method

.method public decodeSignature([B)[B
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x3

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
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 43
    .line 44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 64
    .line 65
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v1, 0x4

    .line 68
    new-array v1, v1, [J

    .line 69
    .line 70
    fill-array-data v1, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        0x414e756b90574f19L    # 3992279.1276644585
        -0x7127748e0f00c3c9L
        -0x2dc310bf1d8390c8L    # -1.4389840865614671E88
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
    :array_1
    .array-data 8
        -0xe87490bc8095ee8L    # -4.023382229585284E238
        0x3b8b574ebe2828caL    # 7.23711442371086E-22
        0x40e0a48a2cc3e46L
        0x2bc6a03de8f8b49fL    # 8.275574232418663E-98
        0x2edcd3f392a7cc2fL    # 5.935738301561082E-83
    .end array-data

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
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 8
        0xddfb073691be3cL
        0x1cb22a0ef6b68923L    # 1.880099827739028E-170
        -0x6d6d672b9b3caa46L
        -0x25de0f1dcd043193L    # -1.518076555712312E126
    .end array-data
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;->encodePublicKey(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)[B
    .locals 3

    .line 2
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object p1

    .line 3
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 8
        -0x285b00e8c9fb6cf0L    # -1.6158245529679147E114
        0x1adfdda109eb518fL
        -0x249d258083feb584L    # -1.6727855867858296E132
    .end array-data
.end method

.method public encodeSignature([B)[B
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    array-length v1, p1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x214a579423769015L
        -0x4ab69c4919d5e2a6L
        0x63ca1de6bef5f0a8L    # 5.046468095195912E172
    .end array-data
.end method

.method public getCertificateDecoders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm$1;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    invoke-direct {v0, p0, v1}, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm$1;-><init>(Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        -0xcd70e0bb5971349L    # -5.450449302539143E246
        -0x7a6271751c1e8c0fL
        0x52c6cc7c5602b53dL    # 5.805239902651507E90
    .end array-data
.end method
