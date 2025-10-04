.class public Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final a:[B

.field private final h:[B

.field private final seed:[B

.field private final spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;[B)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    array-length v0, p2

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 18
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    .line 19
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 20
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    const/4 v1, 0x0

    .line 21
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 22
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v3, p2, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    .line 23
    aput-byte v3, p2, v2

    .line 24
    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 25
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hash length is wrong"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 4
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    .line 7
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    const/4 v0, 0x0

    .line 8
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 9
    div-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 10
    div-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 11
    div-int/lit8 v1, v1, 0x8

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 12
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported hash algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "seed length is wrong"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B[BLnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 29
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    .line 30
    iput-object p3, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 31
    iput-object p4, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 32
    iput-object p5, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method


# virtual methods
.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public geta()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 2
    .line 3
    return-object v0
.end method
