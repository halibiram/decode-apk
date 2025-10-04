.class public Lorg/spongycastle/crypto/digests/SHA1Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x50

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x50

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 6
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->copyIn(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x50

    .line 8
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v0, 0x10

    .line 9
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    const/16 v0, 0x14

    .line 10
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    const/16 v0, 0x18

    .line 11
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    const/16 v0, 0x1c

    .line 12
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    const/16 v0, 0x20

    .line 13
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    const/16 v0, 0x24

    .line 14
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    const/4 v0, 0x0

    .line 15
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v0, v1, :cond_0

    .line 16
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x28

    invoke-static {p1, v2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 4

    .line 1
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 2
    .line 3
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 4
    .line 5
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 6
    .line 7
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 8
    .line 9
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 10
    .line 11
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 12
    .line 13
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 14
    .line 15
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 16
    .line 17
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 18
    .line 19
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 20
    .line 21
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 22
    .line 23
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 31
    .line 32
    iput p1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 33
    .line 34
    return-void
.end method

.method private f(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private g(III)I
    .locals 1

    or-int v0, p2, p3

    and-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private h(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

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
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 10
    .line 11
    add-int/lit8 v1, p2, 0x4

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 17
    .line 18
    add-int/lit8 v1, p2, 0x8

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 24
    .line 25
    add-int/lit8 v1, p2, 0xc

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 31
    .line 32
    add-int/lit8 p2, p2, 0x10

    .line 33
    .line 34
    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    .line 38
    .line 39
    .line 40
    const/16 p1, 0x14

    .line 41
    .line 42
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SHA-1"

    .line 2
    .line 3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x28

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    invoke-super {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 20
    .line 21
    const/16 v2, 0x14

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 27
    .line 28
    const/16 v2, 0x18

    .line 29
    .line 30
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 34
    .line 35
    const/16 v2, 0x1c

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 41
    .line 42
    const/16 v2, 0x20

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 48
    .line 49
    const/16 v2, 0x24

    .line 50
    .line 51
    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 56
    .line 57
    if-eq v1, v2, :cond_0

    .line 58
    .line 59
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 60
    .line 61
    aget v2, v2, v1

    .line 62
    .line 63
    mul-int/lit8 v3, v1, 0x4

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x28

    .line 66
    .line 67
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    return-object v0
.end method

.method public processBlock()V
    .locals 15

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    :goto_0
    const/16 v2, 0x50

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 10
    .line 11
    add-int/lit8 v3, v1, -0x3

    .line 12
    .line 13
    aget v3, v2, v3

    .line 14
    .line 15
    add-int/lit8 v4, v1, -0x8

    .line 16
    .line 17
    aget v4, v2, v4

    .line 18
    .line 19
    xor-int/2addr v3, v4

    .line 20
    add-int/lit8 v4, v1, -0xe

    .line 21
    .line 22
    aget v4, v2, v4

    .line 23
    .line 24
    xor-int/2addr v3, v4

    .line 25
    add-int/lit8 v4, v1, -0x10

    .line 26
    .line 27
    aget v4, v2, v4

    .line 28
    .line 29
    xor-int/2addr v3, v4

    .line 30
    shl-int/lit8 v4, v3, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v3, v3, 0x1f

    .line 33
    .line 34
    or-int/2addr v3, v4

    .line 35
    aput v3, v2, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 41
    .line 42
    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 43
    .line 44
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 45
    .line 46
    iget v4, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 47
    .line 48
    iget v5, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_1
    const/4 v9, 0x4

    .line 54
    if-ge v7, v9, :cond_1

    .line 55
    .line 56
    shl-int/lit8 v9, v1, 0x5

    .line 57
    .line 58
    ushr-int/lit8 v10, v1, 0x1b

    .line 59
    .line 60
    or-int/2addr v9, v10

    .line 61
    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    add-int/2addr v9, v10

    .line 66
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 67
    .line 68
    add-int/lit8 v11, v8, 0x1

    .line 69
    .line 70
    aget v10, v10, v8

    .line 71
    .line 72
    const v12, 0x5a827999

    .line 73
    .line 74
    .line 75
    invoke-static {v9, v10, v12, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    shl-int/lit8 v9, v2, 0x1e

    .line 80
    .line 81
    ushr-int/lit8 v2, v2, 0x2

    .line 82
    .line 83
    or-int/2addr v2, v9

    .line 84
    shl-int/lit8 v9, v5, 0x5

    .line 85
    .line 86
    ushr-int/lit8 v10, v5, 0x1b

    .line 87
    .line 88
    or-int/2addr v9, v10

    .line 89
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    add-int/2addr v9, v10

    .line 94
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 95
    .line 96
    add-int/lit8 v13, v8, 0x2

    .line 97
    .line 98
    aget v10, v10, v11

    .line 99
    .line 100
    invoke-static {v9, v10, v12, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    shl-int/lit8 v9, v1, 0x1e

    .line 105
    .line 106
    ushr-int/lit8 v1, v1, 0x2

    .line 107
    .line 108
    or-int/2addr v1, v9

    .line 109
    shl-int/lit8 v9, v4, 0x5

    .line 110
    .line 111
    ushr-int/lit8 v10, v4, 0x1b

    .line 112
    .line 113
    or-int/2addr v9, v10

    .line 114
    invoke-direct {p0, v5, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    add-int/2addr v9, v10

    .line 119
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 120
    .line 121
    add-int/lit8 v11, v8, 0x3

    .line 122
    .line 123
    aget v10, v10, v13

    .line 124
    .line 125
    invoke-static {v9, v10, v12, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    shl-int/lit8 v9, v5, 0x1e

    .line 130
    .line 131
    ushr-int/lit8 v5, v5, 0x2

    .line 132
    .line 133
    or-int/2addr v5, v9

    .line 134
    shl-int/lit8 v9, v3, 0x5

    .line 135
    .line 136
    ushr-int/lit8 v10, v3, 0x1b

    .line 137
    .line 138
    or-int/2addr v9, v10

    .line 139
    invoke-direct {p0, v4, v5, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    add-int/2addr v9, v10

    .line 144
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 145
    .line 146
    add-int/lit8 v13, v8, 0x4

    .line 147
    .line 148
    aget v10, v10, v11

    .line 149
    .line 150
    invoke-static {v9, v10, v12, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    shl-int/lit8 v9, v4, 0x1e

    .line 155
    .line 156
    ushr-int/lit8 v4, v4, 0x2

    .line 157
    .line 158
    or-int/2addr v4, v9

    .line 159
    shl-int/lit8 v9, v2, 0x5

    .line 160
    .line 161
    ushr-int/lit8 v10, v2, 0x1b

    .line 162
    .line 163
    or-int/2addr v9, v10

    .line 164
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->f(III)I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    add-int/2addr v9, v10

    .line 169
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 170
    .line 171
    add-int/lit8 v8, v8, 0x5

    .line 172
    .line 173
    aget v10, v10, v13

    .line 174
    .line 175
    invoke-static {v9, v10, v12, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    shl-int/lit8 v9, v3, 0x1e

    .line 180
    .line 181
    ushr-int/lit8 v3, v3, 0x2

    .line 182
    .line 183
    or-int/2addr v3, v9

    .line 184
    add-int/lit8 v7, v7, 0x1

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_1
    const/4 v7, 0x0

    .line 189
    :goto_2
    if-ge v7, v9, :cond_2

    .line 190
    .line 191
    shl-int/lit8 v10, v1, 0x5

    .line 192
    .line 193
    ushr-int/lit8 v11, v1, 0x1b

    .line 194
    .line 195
    or-int/2addr v10, v11

    .line 196
    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    add-int/2addr v10, v11

    .line 201
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 202
    .line 203
    add-int/lit8 v12, v8, 0x1

    .line 204
    .line 205
    aget v11, v11, v8

    .line 206
    .line 207
    const v13, 0x6ed9eba1

    .line 208
    .line 209
    .line 210
    invoke-static {v10, v11, v13, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    shl-int/lit8 v10, v2, 0x1e

    .line 215
    .line 216
    ushr-int/lit8 v2, v2, 0x2

    .line 217
    .line 218
    or-int/2addr v2, v10

    .line 219
    shl-int/lit8 v10, v5, 0x5

    .line 220
    .line 221
    ushr-int/lit8 v11, v5, 0x1b

    .line 222
    .line 223
    or-int/2addr v10, v11

    .line 224
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    add-int/2addr v10, v11

    .line 229
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 230
    .line 231
    add-int/lit8 v14, v8, 0x2

    .line 232
    .line 233
    aget v11, v11, v12

    .line 234
    .line 235
    invoke-static {v10, v11, v13, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    shl-int/lit8 v10, v1, 0x1e

    .line 240
    .line 241
    ushr-int/lit8 v1, v1, 0x2

    .line 242
    .line 243
    or-int/2addr v1, v10

    .line 244
    shl-int/lit8 v10, v4, 0x5

    .line 245
    .line 246
    ushr-int/lit8 v11, v4, 0x1b

    .line 247
    .line 248
    or-int/2addr v10, v11

    .line 249
    invoke-direct {p0, v5, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    add-int/2addr v10, v11

    .line 254
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 255
    .line 256
    add-int/lit8 v12, v8, 0x3

    .line 257
    .line 258
    aget v11, v11, v14

    .line 259
    .line 260
    invoke-static {v10, v11, v13, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    shl-int/lit8 v10, v5, 0x1e

    .line 265
    .line 266
    ushr-int/lit8 v5, v5, 0x2

    .line 267
    .line 268
    or-int/2addr v5, v10

    .line 269
    shl-int/lit8 v10, v3, 0x5

    .line 270
    .line 271
    ushr-int/lit8 v11, v3, 0x1b

    .line 272
    .line 273
    or-int/2addr v10, v11

    .line 274
    invoke-direct {p0, v4, v5, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    add-int/2addr v10, v11

    .line 279
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 280
    .line 281
    add-int/lit8 v14, v8, 0x4

    .line 282
    .line 283
    aget v11, v11, v12

    .line 284
    .line 285
    invoke-static {v10, v11, v13, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    shl-int/lit8 v10, v4, 0x1e

    .line 290
    .line 291
    ushr-int/lit8 v4, v4, 0x2

    .line 292
    .line 293
    or-int/2addr v4, v10

    .line 294
    shl-int/lit8 v10, v2, 0x5

    .line 295
    .line 296
    ushr-int/lit8 v11, v2, 0x1b

    .line 297
    .line 298
    or-int/2addr v10, v11

    .line 299
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    add-int/2addr v10, v11

    .line 304
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 305
    .line 306
    add-int/lit8 v8, v8, 0x5

    .line 307
    .line 308
    aget v11, v11, v14

    .line 309
    .line 310
    invoke-static {v10, v11, v13, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    shl-int/lit8 v10, v3, 0x1e

    .line 315
    .line 316
    ushr-int/lit8 v3, v3, 0x2

    .line 317
    .line 318
    or-int/2addr v3, v10

    .line 319
    add-int/lit8 v7, v7, 0x1

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_2
    const/4 v7, 0x0

    .line 324
    :goto_3
    if-ge v7, v9, :cond_3

    .line 325
    .line 326
    shl-int/lit8 v10, v1, 0x5

    .line 327
    .line 328
    ushr-int/lit8 v11, v1, 0x1b

    .line 329
    .line 330
    or-int/2addr v10, v11

    .line 331
    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    add-int/2addr v10, v11

    .line 336
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 337
    .line 338
    add-int/lit8 v12, v8, 0x1

    .line 339
    .line 340
    aget v11, v11, v8

    .line 341
    .line 342
    const v13, -0x70e44324

    .line 343
    .line 344
    .line 345
    invoke-static {v10, v11, v13, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    shl-int/lit8 v10, v2, 0x1e

    .line 350
    .line 351
    ushr-int/lit8 v2, v2, 0x2

    .line 352
    .line 353
    or-int/2addr v2, v10

    .line 354
    shl-int/lit8 v10, v5, 0x5

    .line 355
    .line 356
    ushr-int/lit8 v11, v5, 0x1b

    .line 357
    .line 358
    or-int/2addr v10, v11

    .line 359
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    .line 360
    .line 361
    .line 362
    move-result v11

    .line 363
    add-int/2addr v10, v11

    .line 364
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 365
    .line 366
    add-int/lit8 v14, v8, 0x2

    .line 367
    .line 368
    aget v11, v11, v12

    .line 369
    .line 370
    invoke-static {v10, v11, v13, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    shl-int/lit8 v10, v1, 0x1e

    .line 375
    .line 376
    ushr-int/lit8 v1, v1, 0x2

    .line 377
    .line 378
    or-int/2addr v1, v10

    .line 379
    shl-int/lit8 v10, v4, 0x5

    .line 380
    .line 381
    ushr-int/lit8 v11, v4, 0x1b

    .line 382
    .line 383
    or-int/2addr v10, v11

    .line 384
    invoke-direct {p0, v5, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    .line 385
    .line 386
    .line 387
    move-result v11

    .line 388
    add-int/2addr v10, v11

    .line 389
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 390
    .line 391
    add-int/lit8 v12, v8, 0x3

    .line 392
    .line 393
    aget v11, v11, v14

    .line 394
    .line 395
    invoke-static {v10, v11, v13, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    shl-int/lit8 v10, v5, 0x1e

    .line 400
    .line 401
    ushr-int/lit8 v5, v5, 0x2

    .line 402
    .line 403
    or-int/2addr v5, v10

    .line 404
    shl-int/lit8 v10, v3, 0x5

    .line 405
    .line 406
    ushr-int/lit8 v11, v3, 0x1b

    .line 407
    .line 408
    or-int/2addr v10, v11

    .line 409
    invoke-direct {p0, v4, v5, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    .line 410
    .line 411
    .line 412
    move-result v11

    .line 413
    add-int/2addr v10, v11

    .line 414
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 415
    .line 416
    add-int/lit8 v14, v8, 0x4

    .line 417
    .line 418
    aget v11, v11, v12

    .line 419
    .line 420
    invoke-static {v10, v11, v13, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    shl-int/lit8 v10, v4, 0x1e

    .line 425
    .line 426
    ushr-int/lit8 v4, v4, 0x2

    .line 427
    .line 428
    or-int/2addr v4, v10

    .line 429
    shl-int/lit8 v10, v2, 0x5

    .line 430
    .line 431
    ushr-int/lit8 v11, v2, 0x1b

    .line 432
    .line 433
    or-int/2addr v10, v11

    .line 434
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->g(III)I

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    add-int/2addr v10, v11

    .line 439
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 440
    .line 441
    add-int/lit8 v8, v8, 0x5

    .line 442
    .line 443
    aget v11, v11, v14

    .line 444
    .line 445
    invoke-static {v10, v11, v13, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    shl-int/lit8 v10, v3, 0x1e

    .line 450
    .line 451
    ushr-int/lit8 v3, v3, 0x2

    .line 452
    .line 453
    or-int/2addr v3, v10

    .line 454
    add-int/lit8 v7, v7, 0x1

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :cond_3
    const/4 v7, 0x0

    .line 459
    :goto_4
    const/4 v9, 0x3

    .line 460
    if-gt v7, v9, :cond_4

    .line 461
    .line 462
    shl-int/lit8 v9, v1, 0x5

    .line 463
    .line 464
    ushr-int/lit8 v10, v1, 0x1b

    .line 465
    .line 466
    or-int/2addr v9, v10

    .line 467
    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    add-int/2addr v9, v10

    .line 472
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 473
    .line 474
    add-int/lit8 v11, v8, 0x1

    .line 475
    .line 476
    aget v10, v10, v8

    .line 477
    .line 478
    const v12, -0x359d3e2a    # -3715189.5f

    .line 479
    .line 480
    .line 481
    invoke-static {v9, v10, v12, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    shl-int/lit8 v9, v2, 0x1e

    .line 486
    .line 487
    ushr-int/lit8 v2, v2, 0x2

    .line 488
    .line 489
    or-int/2addr v2, v9

    .line 490
    shl-int/lit8 v9, v5, 0x5

    .line 491
    .line 492
    ushr-int/lit8 v10, v5, 0x1b

    .line 493
    .line 494
    or-int/2addr v9, v10

    .line 495
    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    add-int/2addr v9, v10

    .line 500
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 501
    .line 502
    add-int/lit8 v13, v8, 0x2

    .line 503
    .line 504
    aget v10, v10, v11

    .line 505
    .line 506
    invoke-static {v9, v10, v12, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    shl-int/lit8 v9, v1, 0x1e

    .line 511
    .line 512
    ushr-int/lit8 v1, v1, 0x2

    .line 513
    .line 514
    or-int/2addr v1, v9

    .line 515
    shl-int/lit8 v9, v4, 0x5

    .line 516
    .line 517
    ushr-int/lit8 v10, v4, 0x1b

    .line 518
    .line 519
    or-int/2addr v9, v10

    .line 520
    invoke-direct {p0, v5, v1, v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 521
    .line 522
    .line 523
    move-result v10

    .line 524
    add-int/2addr v9, v10

    .line 525
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 526
    .line 527
    add-int/lit8 v11, v8, 0x3

    .line 528
    .line 529
    aget v10, v10, v13

    .line 530
    .line 531
    invoke-static {v9, v10, v12, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    shl-int/lit8 v9, v5, 0x1e

    .line 536
    .line 537
    ushr-int/lit8 v5, v5, 0x2

    .line 538
    .line 539
    or-int/2addr v5, v9

    .line 540
    shl-int/lit8 v9, v3, 0x5

    .line 541
    .line 542
    ushr-int/lit8 v10, v3, 0x1b

    .line 543
    .line 544
    or-int/2addr v9, v10

    .line 545
    invoke-direct {p0, v4, v5, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    add-int/2addr v9, v10

    .line 550
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 551
    .line 552
    add-int/lit8 v13, v8, 0x4

    .line 553
    .line 554
    aget v10, v10, v11

    .line 555
    .line 556
    invoke-static {v9, v10, v12, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    shl-int/lit8 v9, v4, 0x1e

    .line 561
    .line 562
    ushr-int/lit8 v4, v4, 0x2

    .line 563
    .line 564
    or-int/2addr v4, v9

    .line 565
    shl-int/lit8 v9, v2, 0x5

    .line 566
    .line 567
    ushr-int/lit8 v10, v2, 0x1b

    .line 568
    .line 569
    or-int/2addr v9, v10

    .line 570
    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h(III)I

    .line 571
    .line 572
    .line 573
    move-result v10

    .line 574
    add-int/2addr v9, v10

    .line 575
    iget-object v10, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 576
    .line 577
    add-int/lit8 v8, v8, 0x5

    .line 578
    .line 579
    aget v10, v10, v13

    .line 580
    .line 581
    invoke-static {v9, v10, v12, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    shl-int/lit8 v9, v3, 0x1e

    .line 586
    .line 587
    ushr-int/lit8 v3, v3, 0x2

    .line 588
    .line 589
    or-int/2addr v3, v9

    .line 590
    add-int/lit8 v7, v7, 0x1

    .line 591
    .line 592
    goto/16 :goto_4

    .line 593
    .line 594
    :cond_4
    iget v7, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 595
    .line 596
    add-int/2addr v7, v1

    .line 597
    iput v7, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    .line 598
    .line 599
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 600
    .line 601
    add-int/2addr v1, v2

    .line 602
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    .line 603
    .line 604
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 605
    .line 606
    add-int/2addr v1, v3

    .line 607
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    .line 608
    .line 609
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 610
    .line 611
    add-int/2addr v1, v4

    .line 612
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    .line 613
    .line 614
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 615
    .line 616
    add-int/2addr v1, v5

    .line 617
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    .line 618
    .line 619
    iput v6, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 620
    .line 621
    const/4 v1, 0x0

    .line 622
    :goto_5
    if-ge v1, v0, :cond_5

    .line 623
    .line 624
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 625
    .line 626
    aput v6, v2, v1

    .line 627
    .line 628
    add-int/lit8 v1, v1, 0x1

    .line 629
    .line 630
    goto :goto_5

    .line 631
    :cond_5
    return-void
.end method

.method public processLength(J)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

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
    iget-object p2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    .line 32
    .line 33
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 34
    .line 35
    aput p1, p2, v0

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->processBlock()V

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

    const v0, 0x67452301

    .line 2
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H1:I

    const v0, -0x10325477

    .line 3
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H2:I

    const v0, -0x67452302

    .line 4
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H3:I

    const v0, 0x10325476

    .line 5
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H4:I

    const v0, -0x3c2d1e10

    .line 6
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 8
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->X:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 10
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 11
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->copyIn(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    return-void
.end method
