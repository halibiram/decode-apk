.class public abstract Lnet/i2p/crypto/eddsa/math/FieldElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x46757fa4af8dcL


# instance fields
.field protected final f:Lnet/i2p/crypto/eddsa/math/Field;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "field cannot be null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public abstract add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public addOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public divide(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public abstract invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public isNegative()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getEncoding()Lnet/i2p/crypto/eddsa/math/Encoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lnet/i2p/crypto/eddsa/math/Encoding;->isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public abstract isNonZero()Z
.end method

.method public abstract multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract square()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public subtractOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getEncoding()Lnet/i2p/crypto/eddsa/math/Encoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lnet/i2p/crypto/eddsa/math/Encoding;->encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
