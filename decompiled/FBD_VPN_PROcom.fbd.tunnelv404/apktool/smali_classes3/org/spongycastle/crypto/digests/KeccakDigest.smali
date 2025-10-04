.class public Lorg/spongycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRhoOffsets:[I

.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/spongycastle/crypto/digests/KeccakDigest;->keccakInitializeRoundConstants()[J

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    .line 6
    .line 7
    invoke-static {}, Lorg/spongycastle/crypto/digests/KeccakDigest;->keccakInitializeRhoOffsets()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRhoOffsets:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x120

    .line 1
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 3
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 5
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 7
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v1, 0xc0

    .line 8
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 9
    iget-object v1, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 12
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 13
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 14
    iget-boolean p1, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 9
    .line 10
    aget-wide v3, v2, v1

    .line 11
    .line 12
    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    xor-long/2addr v3, v5

    .line 17
    aput-wide v3, v2, v1

    .line 18
    .line 19
    add-int/lit8 p2, p2, 0x8

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 2
    .line 3
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 4
    .line 5
    shr-int/lit8 v1, v1, 0x6

    .line 6
    .line 7
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private KeccakPermutation()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x18

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 7
    .line 8
    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->theta([J)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 12
    .line 13
    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->rho([J)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 17
    .line 18
    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->pi([J)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 22
    .line 23
    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->chi([J)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->iota([JI)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private static LFSR86540([B)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    and-int/lit16 v4, v1, 0x80

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    shl-int/2addr v1, v3

    .line 17
    xor-int/lit8 v1, v1, 0x71

    .line 18
    .line 19
    int-to-byte v1, v1

    .line 20
    aput-byte v1, p0, v0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    shl-int/2addr v1, v3

    .line 24
    int-to-byte v1, v1

    .line 25
    aput-byte v1, p0, v0

    .line 26
    .line 27
    :goto_1
    return v2
.end method

.method private static chi([J)V
    .locals 21

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x19

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-wide v1, p0, v0

    .line 7
    .line 8
    add-int/lit8 v3, v0, 0x1

    .line 9
    .line 10
    aget-wide v4, p0, v3

    .line 11
    .line 12
    not-long v6, v4

    .line 13
    add-int/lit8 v8, v0, 0x2

    .line 14
    .line 15
    aget-wide v9, p0, v8

    .line 16
    .line 17
    and-long/2addr v6, v9

    .line 18
    xor-long/2addr v6, v1

    .line 19
    not-long v11, v9

    .line 20
    add-int/lit8 v13, v0, 0x3

    .line 21
    .line 22
    aget-wide v14, p0, v13

    .line 23
    .line 24
    and-long/2addr v11, v14

    .line 25
    xor-long/2addr v11, v4

    .line 26
    move-wide/from16 v16, v11

    .line 27
    .line 28
    not-long v11, v14

    .line 29
    add-int/lit8 v18, v0, 0x4

    .line 30
    .line 31
    move-wide/from16 v19, v6

    .line 32
    .line 33
    aget-wide v6, p0, v18

    .line 34
    .line 35
    and-long/2addr v11, v6

    .line 36
    xor-long/2addr v9, v11

    .line 37
    not-long v11, v6

    .line 38
    and-long/2addr v11, v1

    .line 39
    xor-long/2addr v11, v14

    .line 40
    not-long v1, v1

    .line 41
    and-long/2addr v1, v4

    .line 42
    xor-long/2addr v1, v6

    .line 43
    aput-wide v19, p0, v0

    .line 44
    .line 45
    aput-wide v16, p0, v3

    .line 46
    .line 47
    aput-wide v9, p0, v8

    .line 48
    .line 49
    aput-wide v11, p0, v13

    .line 50
    .line 51
    aput-wide v1, p0, v18

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xe0

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x100

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x120

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x180

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x200

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    rsub-int p1, p1, 0x640

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->initSponge(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private initSponge(I)V
    .locals 6

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x640

    .line 4
    .line 5
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    rem-int/lit8 v1, p1, 0x40

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    if-ge v2, v4, :cond_0

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    aput-wide v4, v3, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 28
    .line 29
    invoke-static {v2, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 30
    .line 31
    .line 32
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 33
    .line 34
    iput-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 35
    .line 36
    sub-int/2addr v0, p1

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "invalid rate value"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method private static iota([JI)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    sget-object v3, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    .line 5
    .line 6
    aget-wide v4, v3, p1

    .line 7
    .line 8
    xor-long/2addr v1, v4

    .line 9
    aput-wide v1, p0, v0

    .line 10
    .line 11
    return-void
.end method

.method private static keccakInitializeRhoOffsets()[I
    .locals 6

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    :goto_0
    const/16 v4, 0x18

    .line 12
    .line 13
    if-ge v1, v4, :cond_0

    .line 14
    .line 15
    rem-int/lit8 v4, v3, 0x5

    .line 16
    .line 17
    rem-int/lit8 v5, v2, 0x5

    .line 18
    .line 19
    mul-int/lit8 v5, v5, 0x5

    .line 20
    .line 21
    add-int/2addr v5, v4

    .line 22
    add-int/lit8 v4, v1, 0x1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    mul-int v1, v1, v4

    .line 27
    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    rem-int/lit8 v1, v1, 0x40

    .line 31
    .line 32
    aput v1, v0, v5

    .line 33
    .line 34
    rem-int/lit8 v1, v2, 0x5

    .line 35
    .line 36
    mul-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    mul-int/lit8 v2, v2, 0x3

    .line 39
    .line 40
    add-int/2addr v2, v3

    .line 41
    rem-int/lit8 v2, v2, 0x5

    .line 42
    .line 43
    move v3, v1

    .line 44
    move v1, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method private static keccakInitializeRoundConstants()[J
    .locals 12

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [B

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-byte v2, v3, v4

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    if-ge v5, v0, :cond_2

    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    aput-wide v6, v1, v5

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    :goto_1
    const/4 v7, 0x7

    .line 20
    if-ge v6, v7, :cond_1

    .line 21
    .line 22
    shl-int v7, v2, v6

    .line 23
    .line 24
    sub-int/2addr v7, v2

    .line 25
    invoke-static {v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->LFSR86540([B)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    aget-wide v8, v1, v5

    .line 32
    .line 33
    const-wide/16 v10, 0x1

    .line 34
    .line 35
    shl-long/2addr v10, v7

    .line 36
    xor-long v7, v8, v10

    .line 37
    .line 38
    aput-wide v7, v1, v5

    .line 39
    .line 40
    :cond_0
    add-int/2addr v6, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/2addr v5, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object v1
.end method

.method private static leftRotate(JI)J
    .locals 2

    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 2
    .line 3
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 4
    .line 5
    shr-int/lit8 v2, v1, 0x3

    .line 6
    .line 7
    aget-byte v3, v0, v2

    .line 8
    .line 9
    and-int/lit8 v4, v1, 0x7

    .line 10
    .line 11
    const-wide/16 v5, 0x1

    .line 12
    .line 13
    shl-long v7, v5, v4

    .line 14
    .line 15
    long-to-int v4, v7

    .line 16
    int-to-byte v4, v4

    .line 17
    or-int/2addr v3, v4

    .line 18
    int-to-byte v3, v3

    .line 19
    aput-byte v3, v0, v2

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    add-int/2addr v1, v2

    .line 23
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 24
    .line 25
    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-ne v1, v3, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, v0, v4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 31
    .line 32
    .line 33
    iput v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 36
    .line 37
    shr-int/lit8 v1, v0, 0x6

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x3f

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v4, v1, :cond_1

    .line 43
    .line 44
    iget-object v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 45
    .line 46
    aget-wide v8, v7, v4

    .line 47
    .line 48
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 49
    .line 50
    invoke-static {v10, v3}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    .line 51
    .line 52
    .line 53
    move-result-wide v10

    .line 54
    xor-long/2addr v8, v10

    .line 55
    aput-wide v8, v7, v4

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x8

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-lez v0, :cond_2

    .line 63
    .line 64
    shl-long v7, v5, v0

    .line 65
    .line 66
    sub-long/2addr v7, v5

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 68
    .line 69
    aget-wide v4, v0, v1

    .line 70
    .line 71
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 72
    .line 73
    invoke-static {v6, v3}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    and-long v6, v9, v7

    .line 78
    .line 79
    xor-long v3, v4, v6

    .line 80
    .line 81
    aput-wide v3, v0, v1

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 84
    .line 85
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 86
    .line 87
    sub-int/2addr v1, v2

    .line 88
    shr-int/lit8 v1, v1, 0x6

    .line 89
    .line 90
    aget-wide v3, v0, v1

    .line 91
    .line 92
    const-wide/high16 v5, -0x8000000000000000L

    .line 93
    .line 94
    xor-long/2addr v3, v5

    .line 95
    aput-wide v3, v0, v1

    .line 96
    .line 97
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 101
    .line 102
    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 104
    .line 105
    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 106
    .line 107
    iput-boolean v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 108
    .line 109
    return-void
.end method

.method private static pi([J)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    const/4 v3, 0x6

    .line 5
    aget-wide v4, p0, v3

    .line 6
    .line 7
    aput-wide v4, p0, v0

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    aget-wide v4, p0, v0

    .line 12
    .line 13
    aput-wide v4, p0, v3

    .line 14
    .line 15
    const/16 v3, 0x16

    .line 16
    .line 17
    aget-wide v4, p0, v3

    .line 18
    .line 19
    aput-wide v4, p0, v0

    .line 20
    .line 21
    const/16 v0, 0xe

    .line 22
    .line 23
    aget-wide v4, p0, v0

    .line 24
    .line 25
    aput-wide v4, p0, v3

    .line 26
    .line 27
    const/16 v3, 0x14

    .line 28
    .line 29
    aget-wide v4, p0, v3

    .line 30
    .line 31
    aput-wide v4, p0, v0

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    aget-wide v4, p0, v0

    .line 35
    .line 36
    aput-wide v4, p0, v3

    .line 37
    .line 38
    const/16 v3, 0xc

    .line 39
    .line 40
    aget-wide v4, p0, v3

    .line 41
    .line 42
    aput-wide v4, p0, v0

    .line 43
    .line 44
    const/16 v0, 0xd

    .line 45
    .line 46
    aget-wide v4, p0, v0

    .line 47
    .line 48
    aput-wide v4, p0, v3

    .line 49
    .line 50
    const/16 v3, 0x13

    .line 51
    .line 52
    aget-wide v4, p0, v3

    .line 53
    .line 54
    aput-wide v4, p0, v0

    .line 55
    .line 56
    const/16 v0, 0x17

    .line 57
    .line 58
    aget-wide v4, p0, v0

    .line 59
    .line 60
    aput-wide v4, p0, v3

    .line 61
    .line 62
    const/16 v3, 0xf

    .line 63
    .line 64
    aget-wide v4, p0, v3

    .line 65
    .line 66
    aput-wide v4, p0, v0

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    aget-wide v4, p0, v0

    .line 70
    .line 71
    aput-wide v4, p0, v3

    .line 72
    .line 73
    const/16 v3, 0x18

    .line 74
    .line 75
    aget-wide v4, p0, v3

    .line 76
    .line 77
    aput-wide v4, p0, v0

    .line 78
    .line 79
    const/16 v0, 0x15

    .line 80
    .line 81
    aget-wide v4, p0, v0

    .line 82
    .line 83
    aput-wide v4, p0, v3

    .line 84
    .line 85
    const/16 v3, 0x8

    .line 86
    .line 87
    aget-wide v4, p0, v3

    .line 88
    .line 89
    aput-wide v4, p0, v0

    .line 90
    .line 91
    const/16 v0, 0x10

    .line 92
    .line 93
    aget-wide v4, p0, v0

    .line 94
    .line 95
    aput-wide v4, p0, v3

    .line 96
    .line 97
    const/4 v3, 0x5

    .line 98
    aget-wide v4, p0, v3

    .line 99
    .line 100
    aput-wide v4, p0, v0

    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    aget-wide v4, p0, v0

    .line 104
    .line 105
    aput-wide v4, p0, v3

    .line 106
    .line 107
    const/16 v3, 0x12

    .line 108
    .line 109
    aget-wide v4, p0, v3

    .line 110
    .line 111
    aput-wide v4, p0, v0

    .line 112
    .line 113
    const/16 v0, 0x11

    .line 114
    .line 115
    aget-wide v4, p0, v0

    .line 116
    .line 117
    aput-wide v4, p0, v3

    .line 118
    .line 119
    const/16 v3, 0xb

    .line 120
    .line 121
    aget-wide v4, p0, v3

    .line 122
    .line 123
    aput-wide v4, p0, v0

    .line 124
    .line 125
    const/4 v0, 0x7

    .line 126
    aget-wide v4, p0, v0

    .line 127
    .line 128
    aput-wide v4, p0, v3

    .line 129
    .line 130
    const/16 v0, 0xa

    .line 131
    .line 132
    aget-wide v3, p0, v0

    .line 133
    .line 134
    const/4 v0, 0x7

    .line 135
    aput-wide v3, p0, v0

    .line 136
    .line 137
    const/16 v0, 0xa

    .line 138
    .line 139
    aput-wide v1, p0, v0

    .line 140
    .line 141
    return-void
.end method

.method private static rho([J)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    const/16 v1, 0x19

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-wide v1, p0, v0

    .line 7
    .line 8
    sget-object v3, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRhoOffsets:[I

    .line 9
    .line 10
    aget v3, v3, v0

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    aput-wide v1, p0, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private static theta([J)V
    .locals 33

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    const/4 v3, 0x5

    .line 5
    aget-wide v4, p0, v3

    .line 6
    .line 7
    xor-long/2addr v1, v4

    .line 8
    const/16 v4, 0xa

    .line 9
    .line 10
    aget-wide v5, p0, v4

    .line 11
    .line 12
    xor-long/2addr v1, v5

    .line 13
    const/16 v5, 0xf

    .line 14
    .line 15
    aget-wide v6, p0, v5

    .line 16
    .line 17
    xor-long/2addr v1, v6

    .line 18
    const/16 v6, 0x14

    .line 19
    .line 20
    aget-wide v7, p0, v6

    .line 21
    .line 22
    xor-long/2addr v1, v7

    .line 23
    const/4 v7, 0x1

    .line 24
    aget-wide v8, p0, v7

    .line 25
    .line 26
    const/4 v10, 0x6

    .line 27
    aget-wide v11, p0, v10

    .line 28
    .line 29
    xor-long/2addr v8, v11

    .line 30
    const/16 v11, 0xb

    .line 31
    .line 32
    aget-wide v12, p0, v11

    .line 33
    .line 34
    xor-long/2addr v8, v12

    .line 35
    const/16 v12, 0x10

    .line 36
    .line 37
    aget-wide v13, p0, v12

    .line 38
    .line 39
    xor-long/2addr v8, v13

    .line 40
    const/16 v13, 0x15

    .line 41
    .line 42
    aget-wide v14, p0, v13

    .line 43
    .line 44
    xor-long/2addr v8, v14

    .line 45
    const/4 v14, 0x2

    .line 46
    aget-wide v15, p0, v14

    .line 47
    .line 48
    const/16 v17, 0x7

    .line 49
    .line 50
    aget-wide v18, p0, v17

    .line 51
    .line 52
    xor-long v15, v15, v18

    .line 53
    .line 54
    const/16 v18, 0xc

    .line 55
    .line 56
    aget-wide v19, p0, v18

    .line 57
    .line 58
    xor-long v15, v15, v19

    .line 59
    .line 60
    const/16 v19, 0x11

    .line 61
    .line 62
    aget-wide v20, p0, v19

    .line 63
    .line 64
    xor-long v15, v15, v20

    .line 65
    .line 66
    const/16 v20, 0x16

    .line 67
    .line 68
    aget-wide v21, p0, v20

    .line 69
    .line 70
    xor-long v14, v15, v21

    .line 71
    .line 72
    const/16 v16, 0x3

    .line 73
    .line 74
    aget-wide v21, p0, v16

    .line 75
    .line 76
    const/16 v23, 0x8

    .line 77
    .line 78
    aget-wide v24, p0, v23

    .line 79
    .line 80
    xor-long v21, v21, v24

    .line 81
    .line 82
    const/16 v24, 0xd

    .line 83
    .line 84
    aget-wide v25, p0, v24

    .line 85
    .line 86
    xor-long v21, v21, v25

    .line 87
    .line 88
    const/16 v25, 0x12

    .line 89
    .line 90
    aget-wide v26, p0, v25

    .line 91
    .line 92
    xor-long v21, v21, v26

    .line 93
    .line 94
    const/16 v26, 0x17

    .line 95
    .line 96
    aget-wide v27, p0, v26

    .line 97
    .line 98
    xor-long v12, v21, v27

    .line 99
    .line 100
    const/16 v21, 0x4

    .line 101
    .line 102
    aget-wide v27, p0, v21

    .line 103
    .line 104
    const/16 v22, 0x9

    .line 105
    .line 106
    aget-wide v29, p0, v22

    .line 107
    .line 108
    xor-long v27, v27, v29

    .line 109
    .line 110
    const/16 v29, 0xe

    .line 111
    .line 112
    aget-wide v29, p0, v29

    .line 113
    .line 114
    xor-long v27, v27, v29

    .line 115
    .line 116
    const/16 v29, 0x13

    .line 117
    .line 118
    aget-wide v29, p0, v29

    .line 119
    .line 120
    xor-long v27, v27, v29

    .line 121
    .line 122
    const/16 v29, 0x18

    .line 123
    .line 124
    aget-wide v29, p0, v29

    .line 125
    .line 126
    move-wide/from16 v31, v12

    .line 127
    .line 128
    xor-long v11, v27, v29

    .line 129
    .line 130
    invoke-static {v8, v9, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    .line 131
    .line 132
    .line 133
    move-result-wide v27

    .line 134
    xor-long v27, v27, v11

    .line 135
    .line 136
    aget-wide v29, p0, v0

    .line 137
    .line 138
    xor-long v29, v29, v27

    .line 139
    .line 140
    aput-wide v29, p0, v0

    .line 141
    .line 142
    aget-wide v29, p0, v3

    .line 143
    .line 144
    xor-long v29, v29, v27

    .line 145
    .line 146
    aput-wide v29, p0, v3

    .line 147
    .line 148
    aget-wide v29, p0, v4

    .line 149
    .line 150
    xor-long v29, v29, v27

    .line 151
    .line 152
    aput-wide v29, p0, v4

    .line 153
    .line 154
    aget-wide v3, p0, v5

    .line 155
    .line 156
    xor-long v3, v3, v27

    .line 157
    .line 158
    aput-wide v3, p0, v5

    .line 159
    .line 160
    aget-wide v3, p0, v6

    .line 161
    .line 162
    xor-long v3, v3, v27

    .line 163
    .line 164
    aput-wide v3, p0, v6

    .line 165
    .line 166
    invoke-static {v14, v15, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    xor-long/2addr v3, v1

    .line 171
    aget-wide v5, p0, v7

    .line 172
    .line 173
    xor-long/2addr v5, v3

    .line 174
    aput-wide v5, p0, v7

    .line 175
    .line 176
    aget-wide v5, p0, v10

    .line 177
    .line 178
    xor-long/2addr v5, v3

    .line 179
    aput-wide v5, p0, v10

    .line 180
    .line 181
    const/16 v0, 0xb

    .line 182
    .line 183
    aget-wide v5, p0, v0

    .line 184
    .line 185
    xor-long/2addr v5, v3

    .line 186
    aput-wide v5, p0, v0

    .line 187
    .line 188
    const/16 v0, 0x10

    .line 189
    .line 190
    aget-wide v5, p0, v0

    .line 191
    .line 192
    xor-long/2addr v5, v3

    .line 193
    aput-wide v5, p0, v0

    .line 194
    .line 195
    const/16 v0, 0x15

    .line 196
    .line 197
    aget-wide v5, p0, v0

    .line 198
    .line 199
    xor-long/2addr v3, v5

    .line 200
    aput-wide v3, p0, v0

    .line 201
    .line 202
    move-wide/from16 v3, v31

    .line 203
    .line 204
    invoke-static {v3, v4, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    .line 205
    .line 206
    .line 207
    move-result-wide v5

    .line 208
    xor-long/2addr v5, v8

    .line 209
    const/4 v0, 0x2

    .line 210
    aget-wide v8, p0, v0

    .line 211
    .line 212
    xor-long/2addr v8, v5

    .line 213
    aput-wide v8, p0, v0

    .line 214
    .line 215
    aget-wide v8, p0, v17

    .line 216
    .line 217
    xor-long/2addr v8, v5

    .line 218
    aput-wide v8, p0, v17

    .line 219
    .line 220
    aget-wide v8, p0, v18

    .line 221
    .line 222
    xor-long/2addr v8, v5

    .line 223
    aput-wide v8, p0, v18

    .line 224
    .line 225
    aget-wide v8, p0, v19

    .line 226
    .line 227
    xor-long/2addr v8, v5

    .line 228
    aput-wide v8, p0, v19

    .line 229
    .line 230
    aget-wide v8, p0, v20

    .line 231
    .line 232
    xor-long/2addr v5, v8

    .line 233
    aput-wide v5, p0, v20

    .line 234
    .line 235
    invoke-static {v11, v12, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    .line 236
    .line 237
    .line 238
    move-result-wide v5

    .line 239
    xor-long/2addr v5, v14

    .line 240
    aget-wide v8, p0, v16

    .line 241
    .line 242
    xor-long/2addr v8, v5

    .line 243
    aput-wide v8, p0, v16

    .line 244
    .line 245
    aget-wide v8, p0, v23

    .line 246
    .line 247
    xor-long/2addr v8, v5

    .line 248
    aput-wide v8, p0, v23

    .line 249
    .line 250
    aget-wide v8, p0, v24

    .line 251
    .line 252
    xor-long/2addr v8, v5

    .line 253
    aput-wide v8, p0, v24

    .line 254
    .line 255
    aget-wide v8, p0, v25

    .line 256
    .line 257
    xor-long/2addr v8, v5

    .line 258
    aput-wide v8, p0, v25

    .line 259
    .line 260
    aget-wide v8, p0, v26

    .line 261
    .line 262
    xor-long/2addr v5, v8

    .line 263
    aput-wide v5, p0, v26

    .line 264
    .line 265
    invoke-static {v1, v2, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    .line 266
    .line 267
    .line 268
    move-result-wide v0

    .line 269
    xor-long/2addr v0, v3

    .line 270
    aget-wide v2, p0, v21

    .line 271
    .line 272
    xor-long/2addr v2, v0

    .line 273
    aput-wide v2, p0, v21

    .line 274
    .line 275
    aget-wide v2, p0, v22

    .line 276
    .line 277
    xor-long/2addr v2, v0

    .line 278
    aput-wide v2, p0, v22

    .line 279
    .line 280
    const/16 v2, 0xe

    .line 281
    .line 282
    aget-wide v3, p0, v2

    .line 283
    .line 284
    xor-long/2addr v3, v0

    .line 285
    aput-wide v3, p0, v2

    .line 286
    .line 287
    const/16 v2, 0x13

    .line 288
    .line 289
    aget-wide v3, p0, v2

    .line 290
    .line 291
    xor-long/2addr v3, v0

    .line 292
    aput-wide v3, p0, v2

    .line 293
    .line 294
    const/16 v2, 0x18

    .line 295
    .line 296
    aget-wide v3, p0, v2

    .line 297
    .line 298
    xor-long/2addr v0, v3

    .line 299
    aput-wide v0, p0, v2

    .line 300
    .line 301
    return-void
.end method


# virtual methods
.method public absorb([BII)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 2
    .line 3
    rem-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    if-nez v1, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 8
    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    shr-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 14
    .line 15
    shr-int/lit8 v1, v1, 0x3

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :cond_0
    :goto_0
    if-ge v3, p3, :cond_3

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    sub-int v4, p3, v1

    .line 24
    .line 25
    if-gt v3, v4, :cond_2

    .line 26
    .line 27
    :cond_1
    add-int v5, p2, v3

    .line 28
    .line 29
    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 30
    .line 31
    .line 32
    add-int/2addr v3, v1

    .line 33
    if-le v3, v4, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sub-int v4, v1, v0

    .line 37
    .line 38
    sub-int v5, p3, v3

    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    add-int v5, p2, v3

    .line 45
    .line 46
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 47
    .line 48
    invoke-static {p1, v5, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    add-int/2addr v0, v4

    .line 52
    add-int/2addr v3, v4

    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 56
    .line 57
    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    shl-int/lit8 p1, v0, 0x3

    .line 63
    .line 64
    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, "attempt to absorb while squeezing"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string p2, "attempt to absorb with odd length queue"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public absorbBits(II)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p2, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-gt p2, v1, :cond_2

    .line 6
    .line 7
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 8
    .line 9
    rem-int/lit8 v2, v1, 0x8

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-boolean v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    shl-int v2, v0, p2

    .line 18
    .line 19
    sub-int/2addr v2, v0

    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 21
    .line 22
    shr-int/lit8 v3, v1, 0x3

    .line 23
    .line 24
    and-int/2addr p1, v2

    .line 25
    int-to-byte p1, p1

    .line 26
    aput-byte p1, v0, v3

    .line 27
    .line 28
    add-int/2addr v1, p2

    .line 29
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p2, "attempt to absorb while squeezing"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "attempt to absorb with odd length queue"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "\'bits\' must be in the range 1 to 7"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public doFinal([BI)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->reset()V

    .line 3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method public doFinal([BIBI)I
    .locals 0

    if-lez p4, :cond_0

    .line 4
    invoke-virtual {p0, p3, p4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    .line 5
    :cond_0
    iget p3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long p3, p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 6
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->reset()V

    .line 7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Keccak-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->init(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public squeeze([BIJ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-wide/16 v0, 0x8

    .line 9
    .line 10
    rem-long v2, p3, v0

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-nez v6, :cond_3

    .line 17
    .line 18
    :goto_0
    cmp-long v2, v4, p3

    .line 19
    .line 20
    if-gez v2, :cond_2

    .line 21
    .line 22
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 33
    .line 34
    iput v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 35
    .line 36
    :cond_1
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 37
    .line 38
    int-to-long v2, v2

    .line 39
    sub-long v6, p3, v4

    .line 40
    .line 41
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-int v3, v2

    .line 46
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 47
    .line 48
    iget v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 49
    .line 50
    iget v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 51
    .line 52
    sub-int/2addr v6, v7

    .line 53
    div-int/lit8 v6, v6, 0x8

    .line 54
    .line 55
    div-long v7, v4, v0

    .line 56
    .line 57
    long-to-int v8, v7

    .line 58
    add-int/2addr v8, p2

    .line 59
    div-int/lit8 v7, v3, 0x8

    .line 60
    .line 61
    invoke-static {v2, v6, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 65
    .line 66
    sub-int/2addr v2, v3

    .line 67
    iput v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 68
    .line 69
    int-to-long v2, v3

    .line 70
    add-long/2addr v4, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string p2, "outputLength not a multiple of 8"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public update(B)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method
