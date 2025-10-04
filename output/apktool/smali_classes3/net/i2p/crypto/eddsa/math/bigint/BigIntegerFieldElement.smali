.class public Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;
.super Lnet/i2p/crypto/eddsa/math/FieldElement;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x115fcab9bea568L


# instance fields
.field final bi:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 8
    .line 9
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 19
    .line 20
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public addOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 17
    .line 18
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 0

    if-nez p2, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public divide(Ljava/math/BigInteger;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 2
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 0

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->divide(Ljava/math/BigInteger;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 8
    .line 9
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 10
    .line 11
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 12
    .line 13
    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public isNonZero()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 2
    .line 3
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 8
    .line 9
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public modPow(Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 8
    .line 9
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 10
    .line 11
    check-cast p2, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 12
    .line 13
    iget-object p2, p2, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-virtual {v2, p1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 8
    .line 9
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 19
    .line 20
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public pow(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->modPow(Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getQm5d8()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->pow(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public square()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 8
    .line 9
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 19
    .line 20
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public subtractOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 1
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 6
    .line 7
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 17
    .line 18
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[BigIntegerFieldElement val="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "]"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
