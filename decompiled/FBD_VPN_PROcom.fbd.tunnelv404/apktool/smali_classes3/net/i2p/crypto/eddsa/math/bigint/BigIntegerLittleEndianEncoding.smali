.class public Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;
.super Lnet/i2p/crypto/eddsa/math/Encoding;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe27f44a2a9eddL


# instance fields
.field private mask:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/Encoding;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    div-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 15
    .line 16
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "Not a valid encoding"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "field not set"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public encode(Ljava/math/BigInteger;)[B
    .locals 5

    .line 2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 4
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 6
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length p1, p1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 8
    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "field not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
    .locals 1

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
    .locals 1

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 2
    .line 3
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public declared-synchronized setField(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lnet/i2p/crypto/eddsa/math/Encoding;->setField(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 6
    .line 7
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public toBigInteger([B)Ljava/math/BigInteger;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    sub-int/2addr v2, v3

    .line 11
    sub-int/2addr v2, v1

    .line 12
    aget-byte v2, p1, v2

    .line 13
    .line 14
    aput-byte v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    .line 20
    .line 21
    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method
