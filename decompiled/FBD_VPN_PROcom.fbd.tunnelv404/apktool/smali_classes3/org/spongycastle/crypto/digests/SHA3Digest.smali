.class public Lorg/spongycastle/crypto/digests/SHA3Digest;
.super Lorg/spongycastle/crypto/digests/KeccakDigest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->checkBitLength(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA3Digest;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V

    return-void
.end method

.method private static checkBitLength(I)I
    .locals 3

    .line 1
    const/16 v0, 0xe0

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x100

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x180

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x200

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v1, "\'bitLength\' "

    .line 21
    .line 22
    const-string v2, " not supported for SHA-3"

    .line 23
    .line 24
    invoke-static {p0, v1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method public doFinal([BIBI)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ltz p4, :cond_1

    const/4 v4, 0x7

    if-gt p4, v4, :cond_1

    shl-int v4, v3, p4

    sub-int/2addr v4, v3

    and-int/2addr p3, v4

    shl-int v4, v2, p4

    or-int/2addr p3, v4

    add-int/2addr v2, p4

    if-lt v2, v1, :cond_0

    int-to-byte v2, p3

    .line 3
    new-array v4, v3, [B

    aput-byte v2, v4, v0

    invoke-virtual {p0, v4, v0, v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    add-int/lit8 v2, p4, -0x6

    ushr-int/2addr p3, v1

    :cond_0
    int-to-byte p3, p3

    .line 4
    invoke-super {p0, p1, p2, p3, v2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->doFinal([BIBI)I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'partialBits\' must be in the range [0,7]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SHA3-"

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
