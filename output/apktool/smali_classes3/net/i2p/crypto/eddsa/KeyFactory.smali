.class public final Lnet/i2p/crypto/eddsa/KeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3

    .line 1
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 18
    .line 19
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "key spec not recognised: "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3

    .line 1
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 18
    .line 19
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "key spec not recognised: "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 15
    .line 16
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    .line 23
    .line 24
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, p2, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    const-class v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    move-object v0, p1

    .line 49
    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 50
    .line 51
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    new-instance p1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    .line 58
    .line 59
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getH()[B

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->geta()[B

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v2, p1

    .line 80
    invoke-direct/range {v2 .. v7}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([B[B[BLnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "not implemented yet "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " "

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1

    .line 1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 2
    .line 3
    const-string v0, "No other EdDSA key providers known"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
