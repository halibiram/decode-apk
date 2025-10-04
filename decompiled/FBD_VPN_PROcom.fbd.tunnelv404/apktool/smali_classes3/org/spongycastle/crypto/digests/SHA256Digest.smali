.class public Lorg/spongycastle/crypto/digests/SHA256Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->K:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x40

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 6
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;->copyIn(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x40

    .line 8
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v0, 0x10

    .line 9
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v0, 0x14

    .line 10
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v0, 0x18

    .line 11
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v0, 0x1c

    .line 12
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v0, 0x20

    .line 13
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v0, 0x24

    .line 14
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v0, 0x28

    .line 15
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v0, 0x2c

    .line 16
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v0, 0x30

    .line 17
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v0, 0x0

    .line 18
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v0, v1, :cond_0

    .line 19
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Ch(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    xor-int/2addr p1, p2

    return p1
.end method

.method private Maj(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    xor-int/2addr p1, v0

    and-int/2addr p2, p3

    xor-int/2addr p1, p2

    return p1
.end method

.method private Sum0(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method private Sum1(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method private Theta0(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x3

    xor-int/2addr p1, v0

    return p1
.end method

.method private Theta1(I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0xa

    xor-int/2addr p1, v0

    return p1
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/SHA256Digest;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 5
    .line 6
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 7
    .line 8
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 9
    .line 10
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 11
    .line 12
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 13
    .line 14
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 15
    .line 16
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 17
    .line 18
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 19
    .line 20
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 21
    .line 22
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 23
    .line 24
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 25
    .line 26
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 27
    .line 28
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 29
    .line 30
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 31
    .line 32
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 33
    .line 34
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 35
    .line 36
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 37
    .line 38
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 39
    .line 40
    array-length v2, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    iget p1, p1, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 46
    .line 47
    iput p1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->finish()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 10
    .line 11
    add-int/lit8 v1, p2, 0x4

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 17
    .line 18
    add-int/lit8 v1, p2, 0x8

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 24
    .line 25
    add-int/lit8 v1, p2, 0xc

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 31
    .line 32
    add-int/lit8 v1, p2, 0x10

    .line 33
    .line 34
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 38
    .line 39
    add-int/lit8 v1, p2, 0x14

    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 45
    .line 46
    add-int/lit8 v1, p2, 0x18

    .line 47
    .line 48
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x1c

    .line 54
    .line 55
    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;->reset()V

    .line 59
    .line 60
    .line 61
    const/16 p1, 0x20

    .line 62
    .line 63
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x34

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    invoke-super {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 20
    .line 21
    const/16 v2, 0x14

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 27
    .line 28
    const/16 v2, 0x18

    .line 29
    .line 30
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 34
    .line 35
    const/16 v2, 0x1c

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 41
    .line 42
    const/16 v2, 0x20

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 48
    .line 49
    const/16 v2, 0x24

    .line 50
    .line 51
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 55
    .line 56
    const/16 v2, 0x28

    .line 57
    .line 58
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 62
    .line 63
    const/16 v2, 0x2c

    .line 64
    .line 65
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 69
    .line 70
    const/16 v2, 0x30

    .line 71
    .line 72
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 77
    .line 78
    if-eq v1, v2, :cond_0

    .line 79
    .line 80
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 81
    .line 82
    aget v2, v2, v1

    .line 83
    .line 84
    mul-int/lit8 v3, v1, 0x4

    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x34

    .line 87
    .line 88
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    return-object v0
.end method

.method public processBlock()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v2, 0x10

    .line 4
    .line 5
    :goto_0
    const/16 v3, 0x3f

    .line 6
    .line 7
    if-gt v2, v3, :cond_0

    .line 8
    .line 9
    iget-object v3, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 10
    .line 11
    add-int/lit8 v4, v2, -0x2

    .line 12
    .line 13
    aget v4, v3, v4

    .line 14
    .line 15
    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 20
    .line 21
    add-int/lit8 v6, v2, -0x7

    .line 22
    .line 23
    aget v6, v5, v6

    .line 24
    .line 25
    add-int/2addr v4, v6

    .line 26
    add-int/lit8 v6, v2, -0xf

    .line 27
    .line 28
    aget v5, v5, v6

    .line 29
    .line 30
    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v4, v5

    .line 35
    iget-object v5, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 36
    .line 37
    add-int/lit8 v6, v2, -0x10

    .line 38
    .line 39
    aget v5, v5, v6

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    aput v4, v3, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 48
    .line 49
    iget v3, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 50
    .line 51
    iget v4, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 52
    .line 53
    iget v5, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 54
    .line 55
    iget v6, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 56
    .line 57
    iget v7, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 58
    .line 59
    iget v8, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 60
    .line 61
    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    :goto_1
    const/16 v13, 0x8

    .line 66
    .line 67
    if-ge v11, v13, :cond_1

    .line 68
    .line 69
    invoke-direct {v0, v6}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    invoke-direct {v0, v6, v7, v8}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    add-int/2addr v14, v15

    .line 78
    sget-object v15, Lorg/spongycastle/crypto/digests/SHA256Digest;->K:[I

    .line 79
    .line 80
    aget v16, v15, v12

    .line 81
    .line 82
    add-int v14, v14, v16

    .line 83
    .line 84
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 85
    .line 86
    aget v1, v1, v12

    .line 87
    .line 88
    add-int/2addr v14, v1

    .line 89
    add-int/2addr v14, v9

    .line 90
    add-int/2addr v5, v14

    .line 91
    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    add-int/2addr v1, v9

    .line 100
    add-int/2addr v1, v14

    .line 101
    add-int/lit8 v9, v12, 0x1

    .line 102
    .line 103
    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    invoke-direct {v0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 108
    .line 109
    .line 110
    move-result v17

    .line 111
    add-int v14, v14, v17

    .line 112
    .line 113
    aget v17, v15, v9

    .line 114
    .line 115
    add-int v14, v14, v17

    .line 116
    .line 117
    iget-object v10, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 118
    .line 119
    aget v9, v10, v9

    .line 120
    .line 121
    add-int/2addr v14, v9

    .line 122
    add-int/2addr v14, v8

    .line 123
    add-int/2addr v4, v14

    .line 124
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    add-int/2addr v8, v9

    .line 133
    add-int/2addr v8, v14

    .line 134
    add-int/lit8 v9, v12, 0x2

    .line 135
    .line 136
    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    invoke-direct {v0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    add-int/2addr v10, v14

    .line 145
    aget v14, v15, v9

    .line 146
    .line 147
    add-int/2addr v10, v14

    .line 148
    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 149
    .line 150
    aget v9, v14, v9

    .line 151
    .line 152
    add-int/2addr v10, v9

    .line 153
    add-int/2addr v10, v7

    .line 154
    add-int/2addr v3, v10

    .line 155
    invoke-direct {v0, v8}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    invoke-direct {v0, v8, v1, v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    add-int/2addr v7, v9

    .line 164
    add-int/2addr v7, v10

    .line 165
    add-int/lit8 v9, v12, 0x3

    .line 166
    .line 167
    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-direct {v0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    add-int/2addr v10, v14

    .line 176
    aget v14, v15, v9

    .line 177
    .line 178
    add-int/2addr v10, v14

    .line 179
    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 180
    .line 181
    aget v9, v14, v9

    .line 182
    .line 183
    add-int/2addr v10, v9

    .line 184
    add-int/2addr v10, v6

    .line 185
    add-int/2addr v2, v10

    .line 186
    invoke-direct {v0, v7}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    invoke-direct {v0, v7, v8, v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    add-int/2addr v6, v9

    .line 195
    add-int/2addr v6, v10

    .line 196
    add-int/lit8 v9, v12, 0x4

    .line 197
    .line 198
    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    add-int/2addr v10, v14

    .line 207
    aget v14, v15, v9

    .line 208
    .line 209
    add-int/2addr v10, v14

    .line 210
    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 211
    .line 212
    aget v9, v14, v9

    .line 213
    .line 214
    add-int/2addr v10, v9

    .line 215
    add-int/2addr v10, v5

    .line 216
    add-int v9, v1, v10

    .line 217
    .line 218
    invoke-direct {v0, v6}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-direct {v0, v6, v7, v8}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    add-int/2addr v1, v5

    .line 227
    add-int v5, v1, v10

    .line 228
    .line 229
    add-int/lit8 v1, v12, 0x5

    .line 230
    .line 231
    invoke-direct {v0, v9}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    invoke-direct {v0, v9, v2, v3}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    add-int/2addr v10, v14

    .line 240
    aget v14, v15, v1

    .line 241
    .line 242
    add-int/2addr v10, v14

    .line 243
    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 244
    .line 245
    aget v1, v14, v1

    .line 246
    .line 247
    add-int/2addr v10, v1

    .line 248
    add-int/2addr v10, v4

    .line 249
    add-int/2addr v8, v10

    .line 250
    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-direct {v0, v5, v6, v7}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    add-int/2addr v1, v4

    .line 259
    add-int v4, v1, v10

    .line 260
    .line 261
    add-int/lit8 v1, v12, 0x6

    .line 262
    .line 263
    invoke-direct {v0, v8}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    invoke-direct {v0, v8, v9, v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    add-int/2addr v10, v14

    .line 272
    aget v14, v15, v1

    .line 273
    .line 274
    add-int/2addr v10, v14

    .line 275
    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 276
    .line 277
    aget v1, v14, v1

    .line 278
    .line 279
    add-int/2addr v10, v1

    .line 280
    add-int/2addr v10, v3

    .line 281
    add-int/2addr v7, v10

    .line 282
    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-direct {v0, v4, v5, v6}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    add-int/2addr v1, v3

    .line 291
    add-int v3, v1, v10

    .line 292
    .line 293
    add-int/lit8 v1, v12, 0x7

    .line 294
    .line 295
    invoke-direct {v0, v7}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    invoke-direct {v0, v7, v8, v9}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Ch(III)I

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    add-int/2addr v10, v14

    .line 304
    aget v14, v15, v1

    .line 305
    .line 306
    add-int/2addr v10, v14

    .line 307
    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 308
    .line 309
    aget v1, v14, v1

    .line 310
    .line 311
    add-int/2addr v10, v1

    .line 312
    add-int/2addr v10, v2

    .line 313
    add-int/2addr v6, v10

    .line 314
    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-direct {v0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;->Maj(III)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    add-int/2addr v1, v2

    .line 323
    add-int v2, v1, v10

    .line 324
    .line 325
    add-int/2addr v12, v13

    .line 326
    add-int/lit8 v11, v11, 0x1

    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :cond_1
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 331
    .line 332
    add-int/2addr v1, v2

    .line 333
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    .line 334
    .line 335
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 336
    .line 337
    add-int/2addr v1, v3

    .line 338
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    .line 339
    .line 340
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 341
    .line 342
    add-int/2addr v1, v4

    .line 343
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    .line 344
    .line 345
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 346
    .line 347
    add-int/2addr v1, v5

    .line 348
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    .line 349
    .line 350
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 351
    .line 352
    add-int/2addr v1, v6

    .line 353
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    .line 354
    .line 355
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 356
    .line 357
    add-int/2addr v1, v7

    .line 358
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    .line 359
    .line 360
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 361
    .line 362
    add-int/2addr v1, v8

    .line 363
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    .line 364
    .line 365
    iget v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 366
    .line 367
    add-int/2addr v1, v9

    .line 368
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    .line 369
    .line 370
    const/4 v1, 0x0

    .line 371
    iput v1, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 372
    .line 373
    const/16 v2, 0x10

    .line 374
    .line 375
    const/4 v3, 0x0

    .line 376
    :goto_2
    if-ge v3, v2, :cond_2

    .line 377
    .line 378
    iget-object v4, v0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 379
    .line 380
    aput v1, v4, v3

    .line 381
    .line 382
    add-int/lit8 v3, v3, 0x1

    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_2
    return-void
.end method

.method public processLength(J)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    ushr-long v2, p1, v2

    .line 15
    .line 16
    long-to-int v3, v2

    .line 17
    aput v3, v0, v1

    .line 18
    .line 19
    const/16 v1, 0xf

    .line 20
    .line 21
    long-to-int p2, p1

    .line 22
    aput p2, v0, v1

    .line 23
    .line 24
    return-void
.end method

.method public processWord([BI)V
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x18

    .line 4
    .line 5
    add-int/lit8 v1, p2, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    shl-int/2addr v1, v2

    .line 14
    or-int/2addr v0, v1

    .line 15
    add-int/lit8 v1, p2, 0x2

    .line 16
    .line 17
    aget-byte v1, p1, v1

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    shl-int/lit8 v1, v1, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    add-int/lit8 p2, p2, 0x3

    .line 25
    .line 26
    aget-byte p1, p1, p2

    .line 27
    .line 28
    and-int/lit16 p1, p1, 0xff

    .line 29
    .line 30
    or-int/2addr p1, v0

    .line 31
    iget-object p2, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    .line 32
    .line 33
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 34
    .line 35
    aput p1, p2, v0

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x6a09e667

    .line 2
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H1:I

    const v0, -0x4498517b

    .line 3
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H2:I

    const v0, 0x3c6ef372

    .line 4
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H3:I

    const v0, -0x5ab00ac6

    .line 5
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H4:I

    const v0, 0x510e527f

    .line 6
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H5:I

    const v0, -0x64fa9774

    .line 7
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H6:I

    const v0, 0x1f83d9ab

    .line 8
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H7:I

    const v0, 0x5be0cd19

    .line 9
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 11
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA256Digest;->X:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;->copyIn(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method
