.class public Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1d660e931f14ccL


# instance fields
.field private final B:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final curve:Lnet/i2p/crypto/eddsa/math/Curve;

.field private final hashAlgo:Ljava/lang/String;

.field private final sc:Lnet/i2p/crypto/eddsa/math/ScalarOps;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/ScalarOps;Lnet/i2p/crypto/eddsa/math/GroupElement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    div-int/lit8 v1, v1, 0x4

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-ne v1, v0, :cond_0

    .line 23
    .line 24
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 25
    .line 26
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->hashAlgo:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->sc:Lnet/i2p/crypto/eddsa/math/ScalarOps;

    .line 29
    .line 30
    iput-object p4, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->B:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Hash output is not 2b-bit"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "Unsupported hash algorithm"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
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
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

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
    check-cast p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->hashAlgo:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 26
    .line 27
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/Curve;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->B:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 38
    .line 39
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
.end method

.method public getB()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->B:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurve()Lnet/i2p/crypto/eddsa/math/Curve;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->hashAlgo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->sc:Lnet/i2p/crypto/eddsa/math/ScalarOps;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->hashAlgo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 8
    .line 9
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->B:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 15
    .line 16
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/2addr v0, v1

    .line 21
    return v0
.end method
