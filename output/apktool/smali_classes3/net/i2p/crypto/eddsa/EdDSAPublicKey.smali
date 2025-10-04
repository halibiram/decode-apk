.class public Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/i2p/crypto/eddsa/EdDSAKey;
.implements Ljava/security/PublicKey;


# static fields
.field private static final IDLEN_BYTE:I = 0x3

.field private static final OID_BYTE:I = 0x8

.field private static final OID_ED25519:I = 0x70

.field private static final OID_OLD:I = 0x64

.field private static final serialVersionUID:J = 0x22f31e1b1b346bL


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final Abyte:[B

.field private Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .locals 2

    .line 6
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->decode([B)[B

    move-result-object p1

    sget-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-direct {v0, p1, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 3
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 4
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 5
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method

.method private static decode([B)[B
    .locals 13

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_0
    aget-byte v1, p0, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/4 v4, 0x7

    .line 9
    const-string v5, "unsupported key spec"

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v7, 0x2f

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x70

    .line 18
    .line 19
    if-ne v1, v0, :cond_9

    .line 20
    .line 21
    :try_start_1
    aget-byte v0, p0, v6

    .line 22
    .line 23
    if-ne v0, v4, :cond_1

    .line 24
    .line 25
    const/16 v7, 0x2e

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v7, 0x2c

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    :goto_0
    array-length v8, p0

    .line 33
    if-ne v8, v7, :cond_8

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    aget-byte v9, p0, v8

    .line 37
    .line 38
    const/16 v10, 0x30

    .line 39
    .line 40
    if-ne v9, v10, :cond_7

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    aget-byte v11, p0, v9

    .line 44
    .line 45
    const/4 v12, 0x2

    .line 46
    sub-int/2addr v7, v12

    .line 47
    if-ne v11, v7, :cond_7

    .line 48
    .line 49
    aget-byte v7, p0, v12

    .line 50
    .line 51
    if-ne v7, v10, :cond_7

    .line 52
    .line 53
    aget-byte v7, p0, v6

    .line 54
    .line 55
    if-ne v7, v0, :cond_7

    .line 56
    .line 57
    const/4 v7, 0x4

    .line 58
    aget-byte v7, p0, v7

    .line 59
    .line 60
    const/4 v10, 0x6

    .line 61
    if-ne v7, v10, :cond_7

    .line 62
    .line 63
    aget-byte v7, p0, v3

    .line 64
    .line 65
    if-ne v7, v6, :cond_7

    .line 66
    .line 67
    aget-byte v7, p0, v10

    .line 68
    .line 69
    const/16 v10, 0x2b

    .line 70
    .line 71
    if-ne v7, v10, :cond_7

    .line 72
    .line 73
    aget-byte v7, p0, v4

    .line 74
    .line 75
    const/16 v10, 0x65

    .line 76
    .line 77
    if-ne v7, v10, :cond_7

    .line 78
    .line 79
    const/16 v7, 0xb

    .line 80
    .line 81
    const/16 v10, 0xa

    .line 82
    .line 83
    const/16 v11, 0x9

    .line 84
    .line 85
    if-ne v1, v2, :cond_3

    .line 86
    .line 87
    aget-byte v0, p0, v11

    .line 88
    .line 89
    if-ne v0, v10, :cond_2

    .line 90
    .line 91
    aget-byte v0, p0, v10

    .line 92
    .line 93
    if-ne v0, v9, :cond_2

    .line 94
    .line 95
    aget-byte v0, p0, v7

    .line 96
    .line 97
    if-ne v0, v9, :cond_2

    .line 98
    .line 99
    const/16 v7, 0xc

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p0

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 105
    .line 106
    invoke-direct {p0, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_3
    if-ne v0, v4, :cond_5

    .line 111
    .line 112
    aget-byte v0, p0, v11

    .line 113
    .line 114
    if-ne v0, v3, :cond_4

    .line 115
    .line 116
    aget-byte v0, p0, v10

    .line 117
    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 122
    .line 123
    invoke-direct {p0, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_5
    const/16 v7, 0x9

    .line 128
    .line 129
    :goto_1
    add-int/lit8 v0, v7, 0x1

    .line 130
    .line 131
    aget-byte v1, p0, v7

    .line 132
    .line 133
    if-ne v1, v6, :cond_6

    .line 134
    .line 135
    add-int/lit8 v1, v7, 0x2

    .line 136
    .line 137
    aget-byte v0, p0, v0

    .line 138
    .line 139
    const/16 v2, 0x21

    .line 140
    .line 141
    if-ne v0, v2, :cond_6

    .line 142
    .line 143
    add-int/2addr v7, v6

    .line 144
    aget-byte v0, p0, v1

    .line 145
    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    const/16 v0, 0x20

    .line 149
    .line 150
    new-array v1, v0, [B

    .line 151
    .line 152
    invoke-static {p0, v7, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_6
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 157
    .line 158
    invoke-direct {p0, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_7
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 163
    .line 164
    invoke-direct {p0, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_8
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 169
    .line 170
    const-string v0, "invalid key spec length"

    .line 171
    .line 172
    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 177
    .line 178
    invoke-direct {p0, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :goto_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 183
    .line 184
    invoke-direct {v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 14
    .line 15
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 26
    .line 27
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAbyte()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EdDSA"

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 2
    .line 3
    sget-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    add-int/lit8 v2, v1, 0xc

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v4, 0x30

    .line 22
    .line 23
    aput-byte v4, v2, v3

    .line 24
    .line 25
    const/16 v5, 0xa

    .line 26
    .line 27
    add-int/2addr v1, v5

    .line 28
    int-to-byte v1, v1

    .line 29
    const/4 v6, 0x1

    .line 30
    aput-byte v1, v2, v6

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    aput-byte v4, v2, v1

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    const/4 v4, 0x5

    .line 37
    aput-byte v4, v2, v1

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x6

    .line 41
    aput-byte v8, v2, v7

    .line 42
    .line 43
    aput-byte v1, v2, v4

    .line 44
    .line 45
    const/16 v4, 0x2b

    .line 46
    .line 47
    aput-byte v4, v2, v8

    .line 48
    .line 49
    const/16 v4, 0x65

    .line 50
    .line 51
    const/4 v7, 0x7

    .line 52
    aput-byte v4, v2, v7

    .line 53
    .line 54
    const/16 v4, 0x70

    .line 55
    .line 56
    const/16 v7, 0x8

    .line 57
    .line 58
    aput-byte v4, v2, v7

    .line 59
    .line 60
    const/16 v4, 0x9

    .line 61
    .line 62
    aput-byte v1, v2, v4

    .line 63
    .line 64
    array-length v1, v0

    .line 65
    add-int/2addr v1, v6

    .line 66
    int-to-byte v1, v1

    .line 67
    aput-byte v1, v2, v5

    .line 68
    .line 69
    const/16 v1, 0xb

    .line 70
    .line 71
    aput-byte v3, v2, v1

    .line 72
    .line 73
    array-length v1, v0

    .line 74
    const/16 v4, 0xc

    .line 75
    .line 76
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "X.509"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->negate()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->Abyte:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
