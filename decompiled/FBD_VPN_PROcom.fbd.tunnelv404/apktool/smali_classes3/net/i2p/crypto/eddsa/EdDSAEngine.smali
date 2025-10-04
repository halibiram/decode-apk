.class public final Lnet/i2p/crypto/eddsa/EdDSAEngine;
.super Ljava/security/Signature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;
    }
.end annotation


# static fields
.field public static final ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "NONEwithEdDSA"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private digest:Ljava/security/MessageDigest;

.field private key:Lnet/i2p/crypto/eddsa/EdDSAKey;

.field private oneShotBytes:[B

.field private oneShotLength:I

.field private oneShotMode:Z

.field private oneShotOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;-><init>(Lnet/i2p/crypto/eddsa/EdDSAEngine$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "NONEwithEdDSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    return-void
.end method

.method private digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 18
    .line 19
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getH()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    div-int/lit8 v2, v0, 0x8

    .line 24
    .line 25
    div-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    sub-int/2addr v0, v2

    .line 28
    invoke-virtual {v1, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 20
    .line 21
    return-void
.end method

.method private x_engineSign()[B
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 2
    .line 3
    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 12
    .line 13
    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 22
    .line 23
    check-cast v2, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 24
    .line 25
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->geta()[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-boolean v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 38
    .line 39
    iget v5, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    .line 43
    .line 44
    const-string v1, "update() not called first"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    new-array v3, v4, [B

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_0
    array-length v5, v3

    .line 63
    :goto_1
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 64
    .line 65
    invoke-virtual {v6, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 66
    .line 67
    .line 68
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-interface {v1, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 79
    .line 80
    invoke-interface {v7}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 97
    .line 98
    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 99
    .line 100
    .line 101
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 102
    .line 103
    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 104
    .line 105
    check-cast v9, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 106
    .line 107
    invoke-virtual {v9}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getAbyte()[B

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    .line 113
    .line 114
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 115
    .line 116
    invoke-virtual {v8, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v1, v3}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-interface {v1, v3, v2, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->multiplyAndAdd([B[B[B)[B

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    div-int/lit8 v0, v0, 0x4

    .line 142
    .line 143
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method

.method private x_engineVerify([B)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 2
    .line 3
    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    array-length v1, p1

    .line 20
    div-int/lit8 v2, v0, 0x4

    .line 21
    .line 22
    if-ne v1, v2, :cond_5

    .line 23
    .line 24
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 25
    .line 26
    div-int/lit8 v0, v0, 0x8

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, p1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 33
    .line 34
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 35
    .line 36
    check-cast v4, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 37
    .line 38
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 54
    .line 55
    iget v5, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    .line 59
    .line 60
    const-string v0, "update() not called first"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    new-array v1, v3, [B

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_0
    array-length v5, v1

    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_1
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 80
    .line 81
    invoke-virtual {v6, v1, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 91
    .line 92
    invoke-interface {v4}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-interface {v4, v1}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 109
    .line 110
    invoke-interface {v2}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 119
    .line 120
    check-cast v4, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 121
    .line 122
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v2, v4, v1, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->doubleScalarMultiplyVariableTime(Lnet/i2p/crypto/eddsa/math/GroupElement;[B[B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/4 v1, 0x0

    .line 135
    :goto_2
    array-length v2, v0

    .line 136
    if-ge v1, v2, :cond_4

    .line 137
    .line 138
    aget-byte v2, v0, v1

    .line 139
    .line 140
    aget-byte v4, p1, v1

    .line 141
    .line 142
    if-eq v2, v4, :cond_3

    .line 143
    .line 144
    return v3

    .line 145
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const/4 p1, 0x1

    .line 149
    return p1

    .line 150
    :cond_5
    new-instance p1, Ljava/security/SignatureException;

    .line 151
    .line 152
    const-string v0, "signature length is wrong"

    .line 153
    .line 154
    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "engineSetParameter unsupported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 9
    .line 10
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 11
    .line 12
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "cannot get required digest "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 41
    .line 42
    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " for private key."

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_0
    invoke-interface {p1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    :goto_0
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 91
    .line 92
    const-string v0, "Key hash algorithm does not match chosen digest"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "cannot identify EdDSA private key: "

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 9
    .line 10
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 11
    .line 12
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "cannot get required digest "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 41
    .line 42
    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " for private key."

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_0
    invoke-interface {p1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 88
    .line 89
    const-string v0, "Key hash algorithm does not match chosen digest"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    instance-of v0, p1, Lsun/security/x509/X509Key;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    :try_start_1
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 100
    .line 101
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void

    .line 117
    :catch_1
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "cannot handle X.509 EdDSA public key: "

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "cannot identify EdDSA public key: "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-gtz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "update() already called"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-super {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    return-void
.end method

.method public engineSign()[B
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->x_engineSign()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 9
    .line 10
    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 21
    .line 22
    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 23
    .line 24
    invoke-direct {p0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public engineUpdate(B)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "unsupported in one-shot mode"

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII)V
    .locals 2

    .line 6
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 9
    iput p2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 10
    iput p3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "update() already called"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 14
    :cond_2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public engineVerify([B)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->x_engineVerify([B)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 6
    .line 7
    .line 8
    return p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public signOneShot([B)[B
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->signOneShot([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public signOneShot([BII)[B
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    .line 4
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    return-object p1
.end method

.method public verifyOneShot([BII[B)Z
    .locals 7

    .line 2
    array-length v6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result p1

    return p1
.end method

.method public verifyOneShot([BII[BII)Z
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    .line 6
    invoke-virtual {p0, p4, p5, p6}, Ljava/security/Signature;->verify([BII)Z

    move-result p1

    return p1
.end method

.method public verifyOneShot([B[B)Z
    .locals 7

    .line 1
    array-length v3, p1

    array-length v6, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result p1

    return p1
.end method

.method public verifyOneShot([B[BII)Z
    .locals 7

    .line 3
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result p1

    return p1
.end method
