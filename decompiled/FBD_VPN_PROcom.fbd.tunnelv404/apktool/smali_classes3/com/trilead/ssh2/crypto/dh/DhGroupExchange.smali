.class public Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private e:Ljava/math/BigInteger;

.field private f:Ljava/math/BigInteger;

.field private g:Ljava/math/BigInteger;

.field private final hashAlgorithm:Ljava/lang/String;

.field private k:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 4
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    .line 5
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->hashAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x2c8451ef0f708f6fL    # -1.4434571720319227E94
        0x3a5bf25ca883053fL    # 1.410949110306482E-27
    .end array-data
.end method


# virtual methods
.method public calculateH([B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B
    .locals 2

    .line 1
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getHashAlgorithm()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p5}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getPref_group_len()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-lez p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        0x328b48ecf5ffa69aL    # 3.2385661379813117E-65
        0x408ad72d602c6773L    # 858.8971560925551
        0x1b90e37af8311f2L
    .end array-data
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->hashAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        -0x2b31a6a50a98dc1cL    # -3.3190484426648324E100
        -0x48a69ddd32f5da36L    # -4.5529139576583236E-42
        -0x297d223d63c3447dL    # -5.538524163108058E108
        -0x48861ae9c53362c4L    # -1.8578658402697982E-41
        -0x5399cbeab7e7dd8dL    # -8.315949248128728E-95
        0xe26c415690ba7a4L
        0x6b49be9a1dadbf6eL    # 6.612293677104523E208
    .end array-data
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 3
    .line 4
    new-instance v0, Ljava/math/BigInteger;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    .line 28
    .line 29
    return-void
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    new-array v1, v1, [J

    .line 65
    .line 66
    fill-array-data v1, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x7cb5d7e5cf61abd8L
        0x56386cba4861da42L    # 2.240722226616828E107
        0x2489f5a37c5fac7fL
        -0x342c83537a5e27b1L    # -1.9112801320348997E57
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x47d8c10d4ab49f5dL    # 1.3161541913057615E38
        -0x35136f5d517f8383L    # -8.549942976152667E52
        -0x36218501fae2d84cL    # -6.9605016919891274E47
    .end array-data
.end method
