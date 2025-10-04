.class public Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/i2p/crypto/eddsa/EdDSAKey;
.implements Ljava/security/PrivateKey;


# static fields
.field private static final IDLEN_BYTE:I = 0x6

.field private static final OID_BYTE:I = 0xb

.field private static final OID_ED25519:I = 0x70

.field private static final OID_OLD:I = 0x64

.field private static final serialVersionUID:J = 0x53795f57437c2dL


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final Abyte:[B

.field private final a:[B

.field private final edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

.field private final h:[B

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .locals 2

    .line 8
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->decode([B)[B

    move-result-object p1

    sget-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    invoke-direct {v0, p1, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    .line 3
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getH()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->h:[B

    .line 4
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->geta()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->a:[B

    .line 5
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 6
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->Abyte:[B

    .line 7
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method

.method private static decode([B)[B
    .locals 15

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    :try_start_0
    aget-byte v0, p0, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/16 v2, 0x64

    .line 8
    .line 9
    const/4 v3, 0x6

    .line 10
    const/4 v4, 0x5

    .line 11
    const/16 v5, 0x30

    .line 12
    .line 13
    const/4 v6, 0x7

    .line 14
    const-string v7, "unsupported key spec"

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const/16 v8, 0x31

    .line 19
    .line 20
    const/16 v9, 0x8

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v8, 0x70

    .line 24
    .line 25
    if-ne v0, v8, :cond_a

    .line 26
    .line 27
    :try_start_1
    aget-byte v8, p0, v3

    .line 28
    .line 29
    if-ne v8, v6, :cond_1

    .line 30
    .line 31
    const/16 v8, 0x32

    .line 32
    .line 33
    const/4 v9, 0x7

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 v8, 0x30

    .line 36
    .line 37
    const/4 v9, 0x5

    .line 38
    :goto_0
    array-length v10, p0

    .line 39
    if-ne v10, v8, :cond_9

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    aget-byte v11, p0, v10

    .line 43
    .line 44
    if-ne v11, v5, :cond_8

    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    aget-byte v12, p0, v11

    .line 48
    .line 49
    const/4 v13, 0x2

    .line 50
    sub-int/2addr v8, v13

    .line 51
    if-ne v12, v8, :cond_8

    .line 52
    .line 53
    aget-byte v8, p0, v13

    .line 54
    .line 55
    if-ne v8, v13, :cond_8

    .line 56
    .line 57
    const/4 v8, 0x3

    .line 58
    aget-byte v12, p0, v8

    .line 59
    .line 60
    if-ne v12, v11, :cond_8

    .line 61
    .line 62
    const/4 v12, 0x4

    .line 63
    aget-byte v14, p0, v12

    .line 64
    .line 65
    if-nez v14, :cond_8

    .line 66
    .line 67
    aget-byte v14, p0, v4

    .line 68
    .line 69
    if-ne v14, v5, :cond_8

    .line 70
    .line 71
    aget-byte v5, p0, v3

    .line 72
    .line 73
    if-ne v5, v9, :cond_8

    .line 74
    .line 75
    aget-byte v5, p0, v6

    .line 76
    .line 77
    if-ne v5, v3, :cond_8

    .line 78
    .line 79
    aget-byte v1, p0, v1

    .line 80
    .line 81
    if-ne v1, v8, :cond_8

    .line 82
    .line 83
    const/16 v1, 0x9

    .line 84
    .line 85
    aget-byte v1, p0, v1

    .line 86
    .line 87
    const/16 v3, 0x2b

    .line 88
    .line 89
    if-ne v1, v3, :cond_8

    .line 90
    .line 91
    const/16 v1, 0xa

    .line 92
    .line 93
    aget-byte v3, p0, v1

    .line 94
    .line 95
    const/16 v5, 0x65

    .line 96
    .line 97
    if-ne v3, v5, :cond_8

    .line 98
    .line 99
    const/16 v3, 0xe

    .line 100
    .line 101
    const/16 v5, 0xd

    .line 102
    .line 103
    const/16 v8, 0xc

    .line 104
    .line 105
    if-ne v0, v2, :cond_3

    .line 106
    .line 107
    aget-byte v0, p0, v8

    .line 108
    .line 109
    if-ne v0, v1, :cond_2

    .line 110
    .line 111
    aget-byte v0, p0, v5

    .line 112
    .line 113
    if-ne v0, v11, :cond_2

    .line 114
    .line 115
    aget-byte v0, p0, v3

    .line 116
    .line 117
    if-ne v0, v11, :cond_2

    .line 118
    .line 119
    const/16 v0, 0xf

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    move-exception p0

    .line 123
    goto :goto_3

    .line 124
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 125
    .line 126
    invoke-direct {p0, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_3
    if-ne v9, v6, :cond_5

    .line 131
    .line 132
    aget-byte v0, p0, v8

    .line 133
    .line 134
    if-ne v0, v4, :cond_4

    .line 135
    .line 136
    aget-byte v0, p0, v5

    .line 137
    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 142
    .line 143
    invoke-direct {p0, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_5
    const/16 v3, 0xc

    .line 148
    .line 149
    :goto_1
    add-int/lit8 v0, v3, 0x1

    .line 150
    .line 151
    aget-byte v1, p0, v3

    .line 152
    .line 153
    if-ne v1, v12, :cond_7

    .line 154
    .line 155
    add-int/lit8 v1, v3, 0x2

    .line 156
    .line 157
    aget-byte v0, p0, v0

    .line 158
    .line 159
    const/16 v2, 0x22

    .line 160
    .line 161
    if-ne v0, v2, :cond_7

    .line 162
    .line 163
    move v0, v1

    .line 164
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 165
    .line 166
    aget-byte v2, p0, v0

    .line 167
    .line 168
    if-ne v2, v12, :cond_6

    .line 169
    .line 170
    add-int/2addr v0, v13

    .line 171
    aget-byte v1, p0, v1

    .line 172
    .line 173
    const/16 v2, 0x20

    .line 174
    .line 175
    if-ne v1, v2, :cond_6

    .line 176
    .line 177
    new-array v1, v2, [B

    .line 178
    .line 179
    invoke-static {p0, v0, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .line 181
    .line 182
    return-object v1

    .line 183
    :cond_6
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 184
    .line 185
    invoke-direct {p0, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_7
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 190
    .line 191
    invoke-direct {p0, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0

    .line 195
    :cond_8
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 196
    .line 197
    invoke-direct {p0, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 202
    .line 203
    const-string v0, "invalid key spec length"

    .line 204
    .line 205
    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :cond_a
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 210
    .line 211
    invoke-direct {p0, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :goto_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 216
    .line 217
    invoke-direct {v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
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
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

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
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    .line 14
    .line 15
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

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
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 26
    .line 27
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

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
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAbyte()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->Abyte:[B

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
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

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
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    array-length v1, v0

    .line 19
    add-int/lit8 v2, v1, 0x10

    .line 20
    .line 21
    new-array v2, v2, [B

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0x30

    .line 25
    .line 26
    aput-byte v4, v2, v3

    .line 27
    .line 28
    const/16 v5, 0xe

    .line 29
    .line 30
    add-int/2addr v1, v5

    .line 31
    int-to-byte v1, v1

    .line 32
    const/4 v6, 0x1

    .line 33
    aput-byte v1, v2, v6

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    aput-byte v1, v2, v1

    .line 37
    .line 38
    const/4 v7, 0x3

    .line 39
    aput-byte v6, v2, v7

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    aput-byte v3, v2, v6

    .line 43
    .line 44
    const/4 v8, 0x5

    .line 45
    aput-byte v4, v2, v8

    .line 46
    .line 47
    const/4 v4, 0x6

    .line 48
    aput-byte v8, v2, v4

    .line 49
    .line 50
    const/4 v8, 0x7

    .line 51
    aput-byte v4, v2, v8

    .line 52
    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    aput-byte v7, v2, v4

    .line 56
    .line 57
    const/16 v4, 0x2b

    .line 58
    .line 59
    const/16 v7, 0x9

    .line 60
    .line 61
    aput-byte v4, v2, v7

    .line 62
    .line 63
    const/16 v4, 0x65

    .line 64
    .line 65
    const/16 v7, 0xa

    .line 66
    .line 67
    aput-byte v4, v2, v7

    .line 68
    .line 69
    const/16 v4, 0x70

    .line 70
    .line 71
    const/16 v7, 0xb

    .line 72
    .line 73
    aput-byte v4, v2, v7

    .line 74
    .line 75
    const/16 v4, 0xc

    .line 76
    .line 77
    aput-byte v6, v2, v4

    .line 78
    .line 79
    array-length v4, v0

    .line 80
    add-int/2addr v4, v1

    .line 81
    int-to-byte v1, v4

    .line 82
    const/16 v4, 0xd

    .line 83
    .line 84
    aput-byte v1, v2, v4

    .line 85
    .line 86
    aput-byte v6, v2, v5

    .line 87
    .line 88
    array-length v1, v0

    .line 89
    int-to-byte v1, v1

    .line 90
    const/16 v4, 0xf

    .line 91
    .line 92
    aput-byte v1, v2, v4

    .line 93
    .line 94
    array-length v1, v0

    .line 95
    const/16 v4, 0x10

    .line 96
    .line 97
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PKCS#8"

    .line 2
    .line 3
    return-object v0
.end method

.method public getH()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->h:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public geta()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

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
