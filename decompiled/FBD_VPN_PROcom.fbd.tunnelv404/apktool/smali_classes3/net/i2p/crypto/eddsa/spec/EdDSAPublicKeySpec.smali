.class public Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 9
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 10
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method

.method public constructor <init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 3
    array-length v0, p1

    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;[B)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 5
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public-key length is wrong"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->negate()Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 2
    .line 3
    return-object v0
.end method
