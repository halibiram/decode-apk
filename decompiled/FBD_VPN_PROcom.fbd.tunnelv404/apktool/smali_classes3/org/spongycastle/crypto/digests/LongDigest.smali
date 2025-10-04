.class public abstract Lorg/spongycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/spongycastle/crypto/digests/LongDigest;->K:[J

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    const/16 v0, 0x50

    .line 3
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 5
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/LongDigest;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    const/16 v0, 0x50

    .line 8
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 9
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;->copyIn(Lorg/spongycastle/crypto/digests/LongDigest;)V

    return-void
.end method

.method private Ch(JJJ)J
    .locals 0

    and-long/2addr p3, p1

    not-long p1, p1

    and-long/2addr p1, p5

    xor-long/2addr p1, p3

    return-wide p1
.end method

.method private Maj(JJJ)J
    .locals 2

    and-long v0, p1, p3

    and-long/2addr p1, p5

    xor-long/2addr p1, v0

    and-long/2addr p3, p5

    xor-long/2addr p1, p3

    return-wide p1
.end method

.method private Sigma0(J)J
    .locals 6

    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private Sigma1(J)J
    .locals 6

    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private Sum0(J)J
    .locals 6

    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long/2addr p1, v4

    or-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private Sum1(J)J
    .locals 6

    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long/2addr p1, v4

    or-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private adjustByteCounts()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 2
    .line 3
    const-wide v2, 0x1fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-lez v4, :cond_0

    .line 11
    .line 12
    iget-wide v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 13
    .line 14
    const/16 v6, 0x3d

    .line 15
    .line 16
    ushr-long v6, v0, v6

    .line 17
    .line 18
    add-long/2addr v4, v6

    .line 19
    iput-wide v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 20
    .line 21
    and-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public copyIn(Lorg/spongycastle/crypto/digests/LongDigest;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 2
    .line 3
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 11
    .line 12
    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 13
    .line 14
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 17
    .line 18
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 19
    .line 20
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 21
    .line 22
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 23
    .line 24
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 25
    .line 26
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 27
    .line 28
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 29
    .line 30
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 31
    .line 32
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 33
    .line 34
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 35
    .line 36
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 37
    .line 38
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 39
    .line 40
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 41
    .line 42
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 43
    .line 44
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 45
    .line 46
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 47
    .line 48
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 49
    .line 50
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 51
    .line 52
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 53
    .line 54
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 55
    .line 56
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 57
    .line 58
    array-length v2, v0

    .line 59
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iget p1, p1, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 63
    .line 64
    iput p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 65
    .line 66
    return-void
.end method

.method public finish()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    shl-long/2addr v0, v2

    .line 8
    iget-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 9
    .line 10
    const/16 v4, -0x80

    .line 11
    .line 12
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/LongDigest;->update(B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/LongDigest;->update(B)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/LongDigest;->processLength(JJ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->processBlock()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public getEncodedStateSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x60

    .line 6
    .line 7
    return v0
.end method

.method public populateState([B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 2
    .line 3
    iget v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 17
    .line 18
    const/16 v3, 0xc

    .line 19
    .line 20
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 24
    .line 25
    const/16 v3, 0x14

    .line 26
    .line 27
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 31
    .line 32
    const/16 v3, 0x1c

    .line 33
    .line 34
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 35
    .line 36
    .line 37
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 38
    .line 39
    const/16 v3, 0x24

    .line 40
    .line 41
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 45
    .line 46
    const/16 v3, 0x2c

    .line 47
    .line 48
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 52
    .line 53
    const/16 v3, 0x34

    .line 54
    .line 55
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 56
    .line 57
    .line 58
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 59
    .line 60
    const/16 v3, 0x3c

    .line 61
    .line 62
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 63
    .line 64
    .line 65
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 66
    .line 67
    const/16 v3, 0x44

    .line 68
    .line 69
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    .line 71
    .line 72
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 73
    .line 74
    const/16 v3, 0x4c

    .line 75
    .line 76
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 77
    .line 78
    .line 79
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 80
    .line 81
    const/16 v3, 0x54

    .line 82
    .line 83
    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 87
    .line 88
    const/16 v1, 0x5c

    .line 89
    .line 90
    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 91
    .line 92
    .line 93
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 94
    .line 95
    if-ge v2, v0, :cond_0

    .line 96
    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 98
    .line 99
    aget-wide v3, v0, v2

    .line 100
    .line 101
    mul-int/lit8 v0, v2, 0x8

    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x60

    .line 104
    .line 105
    invoke-static {v3, v4, p1, v0}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public processBlock()V
    .locals 40

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    :goto_0
    const/16 v1, 0x4f

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x2

    .line 15
    .line 16
    aget-wide v2, v1, v2

    .line 17
    .line 18
    invoke-direct {v7, v2, v3}, Lorg/spongycastle/crypto/digests/LongDigest;->Sigma1(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-object v4, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 23
    .line 24
    add-int/lit8 v5, v0, -0x7

    .line 25
    .line 26
    aget-wide v5, v4, v5

    .line 27
    .line 28
    add-long/2addr v2, v5

    .line 29
    add-int/lit8 v5, v0, -0xf

    .line 30
    .line 31
    aget-wide v5, v4, v5

    .line 32
    .line 33
    invoke-direct {v7, v5, v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Sigma0(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    add-long/2addr v2, v4

    .line 38
    iget-object v4, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 39
    .line 40
    add-int/lit8 v5, v0, -0x10

    .line 41
    .line 42
    aget-wide v5, v4, v5

    .line 43
    .line 44
    add-long/2addr v2, v5

    .line 45
    aput-wide v2, v1, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 51
    .line 52
    iget-wide v2, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 53
    .line 54
    iget-wide v4, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 55
    .line 56
    iget-wide v9, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 57
    .line 58
    iget-wide v11, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 59
    .line 60
    iget-wide v13, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 61
    .line 62
    move-wide/from16 v16, v9

    .line 63
    .line 64
    iget-wide v8, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 65
    .line 66
    move-wide/from16 v18, v0

    .line 67
    .line 68
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 69
    .line 70
    move-wide/from16 v22, v13

    .line 71
    .line 72
    move-wide/from16 v20, v16

    .line 73
    .line 74
    const/16 v24, 0x0

    .line 75
    .line 76
    move-wide v13, v2

    .line 77
    move-wide/from16 v16, v4

    .line 78
    .line 79
    move-wide v5, v11

    .line 80
    const/4 v3, 0x0

    .line 81
    move-wide v11, v0

    .line 82
    move-wide/from16 v38, v8

    .line 83
    .line 84
    move-wide/from16 v8, v18

    .line 85
    .line 86
    move-wide/from16 v18, v38

    .line 87
    .line 88
    :goto_1
    const/16 v0, 0xa

    .line 89
    .line 90
    if-ge v3, v0, :cond_1

    .line 91
    .line 92
    invoke-direct {v7, v5, v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v25

    .line 96
    move-object/from16 v0, p0

    .line 97
    .line 98
    move-wide v1, v5

    .line 99
    move/from16 v27, v3

    .line 100
    .line 101
    move-wide/from16 v3, v22

    .line 102
    .line 103
    move-wide/from16 v28, v5

    .line 104
    .line 105
    move-wide/from16 v5, v18

    .line 106
    .line 107
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    add-long v25, v25, v0

    .line 112
    .line 113
    sget-object v30, Lorg/spongycastle/crypto/digests/LongDigest;->K:[J

    .line 114
    .line 115
    aget-wide v0, v30, v24

    .line 116
    .line 117
    add-long v25, v25, v0

    .line 118
    .line 119
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 120
    .line 121
    add-int/lit8 v31, v24, 0x1

    .line 122
    .line 123
    aget-wide v1, v0, v24

    .line 124
    .line 125
    add-long v25, v25, v1

    .line 126
    .line 127
    add-long v25, v25, v11

    .line 128
    .line 129
    add-long v11, v20, v25

    .line 130
    .line 131
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v20

    .line 135
    move-object/from16 v0, p0

    .line 136
    .line 137
    move-wide v1, v8

    .line 138
    move-wide v3, v13

    .line 139
    move-wide/from16 v5, v16

    .line 140
    .line 141
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    add-long v20, v20, v0

    .line 146
    .line 147
    add-long v5, v20, v25

    .line 148
    .line 149
    invoke-direct {v7, v11, v12}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v20

    .line 153
    move-object/from16 v0, p0

    .line 154
    .line 155
    move-wide v1, v11

    .line 156
    move-wide/from16 v3, v28

    .line 157
    .line 158
    move-wide/from16 v32, v11

    .line 159
    .line 160
    move-wide v10, v5

    .line 161
    move-wide/from16 v5, v22

    .line 162
    .line 163
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    add-long v20, v20, v0

    .line 168
    .line 169
    aget-wide v0, v30, v31

    .line 170
    .line 171
    add-long v20, v20, v0

    .line 172
    .line 173
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 174
    .line 175
    add-int/lit8 v12, v24, 0x2

    .line 176
    .line 177
    aget-wide v1, v0, v31

    .line 178
    .line 179
    add-long v20, v20, v1

    .line 180
    .line 181
    add-long v20, v20, v18

    .line 182
    .line 183
    add-long v5, v16, v20

    .line 184
    .line 185
    invoke-direct {v7, v10, v11}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v16

    .line 189
    move-object/from16 v0, p0

    .line 190
    .line 191
    move-wide v1, v10

    .line 192
    move-wide v3, v8

    .line 193
    move-wide/from16 v34, v8

    .line 194
    .line 195
    move-wide v8, v5

    .line 196
    move-wide v5, v13

    .line 197
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    add-long v16, v16, v0

    .line 202
    .line 203
    add-long v5, v16, v20

    .line 204
    .line 205
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v16

    .line 209
    move-object/from16 v0, p0

    .line 210
    .line 211
    move-wide v1, v8

    .line 212
    move-wide/from16 v3, v32

    .line 213
    .line 214
    move-wide/from16 v18, v8

    .line 215
    .line 216
    move-wide v8, v5

    .line 217
    move-wide/from16 v5, v28

    .line 218
    .line 219
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 220
    .line 221
    .line 222
    move-result-wide v0

    .line 223
    add-long v16, v16, v0

    .line 224
    .line 225
    aget-wide v0, v30, v12

    .line 226
    .line 227
    add-long v16, v16, v0

    .line 228
    .line 229
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 230
    .line 231
    add-int/lit8 v20, v24, 0x3

    .line 232
    .line 233
    aget-wide v1, v0, v12

    .line 234
    .line 235
    add-long v16, v16, v1

    .line 236
    .line 237
    add-long v16, v16, v22

    .line 238
    .line 239
    add-long v13, v13, v16

    .line 240
    .line 241
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 242
    .line 243
    .line 244
    move-result-wide v21

    .line 245
    move-object/from16 v0, p0

    .line 246
    .line 247
    move-wide v1, v8

    .line 248
    move-wide v3, v10

    .line 249
    move-wide/from16 v5, v34

    .line 250
    .line 251
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 252
    .line 253
    .line 254
    move-result-wide v0

    .line 255
    add-long v21, v21, v0

    .line 256
    .line 257
    add-long v5, v21, v16

    .line 258
    .line 259
    invoke-direct {v7, v13, v14}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 260
    .line 261
    .line 262
    move-result-wide v16

    .line 263
    move-object/from16 v0, p0

    .line 264
    .line 265
    move-wide v1, v13

    .line 266
    move-wide/from16 v3, v18

    .line 267
    .line 268
    move-wide/from16 v21, v13

    .line 269
    .line 270
    move-wide v12, v5

    .line 271
    move-wide/from16 v5, v32

    .line 272
    .line 273
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 274
    .line 275
    .line 276
    move-result-wide v0

    .line 277
    add-long v16, v16, v0

    .line 278
    .line 279
    aget-wide v0, v30, v20

    .line 280
    .line 281
    add-long v16, v16, v0

    .line 282
    .line 283
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 284
    .line 285
    add-int/lit8 v14, v24, 0x4

    .line 286
    .line 287
    aget-wide v1, v0, v20

    .line 288
    .line 289
    add-long v16, v16, v1

    .line 290
    .line 291
    add-long v16, v16, v28

    .line 292
    .line 293
    add-long v5, v34, v16

    .line 294
    .line 295
    invoke-direct {v7, v12, v13}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 296
    .line 297
    .line 298
    move-result-wide v28

    .line 299
    move-object/from16 v0, p0

    .line 300
    .line 301
    move-wide v1, v12

    .line 302
    move-wide v3, v8

    .line 303
    move-wide/from16 v36, v8

    .line 304
    .line 305
    move-wide v8, v5

    .line 306
    move-wide v5, v10

    .line 307
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 308
    .line 309
    .line 310
    move-result-wide v0

    .line 311
    add-long v28, v28, v0

    .line 312
    .line 313
    add-long v5, v28, v16

    .line 314
    .line 315
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 316
    .line 317
    .line 318
    move-result-wide v16

    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    move-wide v1, v8

    .line 322
    move-wide/from16 v3, v21

    .line 323
    .line 324
    move-wide/from16 v28, v8

    .line 325
    .line 326
    move-wide v8, v5

    .line 327
    move-wide/from16 v5, v18

    .line 328
    .line 329
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 330
    .line 331
    .line 332
    move-result-wide v0

    .line 333
    add-long v16, v16, v0

    .line 334
    .line 335
    aget-wide v0, v30, v14

    .line 336
    .line 337
    add-long v16, v16, v0

    .line 338
    .line 339
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 340
    .line 341
    add-int/lit8 v20, v24, 0x5

    .line 342
    .line 343
    aget-wide v1, v0, v14

    .line 344
    .line 345
    add-long v16, v16, v1

    .line 346
    .line 347
    add-long v16, v16, v32

    .line 348
    .line 349
    add-long v10, v10, v16

    .line 350
    .line 351
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 352
    .line 353
    .line 354
    move-result-wide v31

    .line 355
    move-object/from16 v0, p0

    .line 356
    .line 357
    move-wide v1, v8

    .line 358
    move-wide v3, v12

    .line 359
    move-wide/from16 v5, v36

    .line 360
    .line 361
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 362
    .line 363
    .line 364
    move-result-wide v0

    .line 365
    add-long v31, v31, v0

    .line 366
    .line 367
    add-long v5, v31, v16

    .line 368
    .line 369
    invoke-direct {v7, v10, v11}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v16

    .line 373
    move-object/from16 v0, p0

    .line 374
    .line 375
    move-wide v1, v10

    .line 376
    move-wide/from16 v3, v28

    .line 377
    .line 378
    move-wide v14, v5

    .line 379
    move-wide/from16 v5, v21

    .line 380
    .line 381
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 382
    .line 383
    .line 384
    move-result-wide v0

    .line 385
    add-long v16, v16, v0

    .line 386
    .line 387
    aget-wide v0, v30, v20

    .line 388
    .line 389
    add-long v16, v16, v0

    .line 390
    .line 391
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 392
    .line 393
    add-int/lit8 v23, v24, 0x6

    .line 394
    .line 395
    aget-wide v1, v0, v20

    .line 396
    .line 397
    add-long v16, v16, v1

    .line 398
    .line 399
    add-long v16, v16, v18

    .line 400
    .line 401
    add-long v5, v36, v16

    .line 402
    .line 403
    invoke-direct {v7, v14, v15}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 404
    .line 405
    .line 406
    move-result-wide v18

    .line 407
    move-object/from16 v0, p0

    .line 408
    .line 409
    move-wide v1, v14

    .line 410
    move-wide v3, v8

    .line 411
    move-wide/from16 v31, v8

    .line 412
    .line 413
    move-wide v8, v5

    .line 414
    move-wide v5, v12

    .line 415
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 416
    .line 417
    .line 418
    move-result-wide v0

    .line 419
    add-long v18, v18, v0

    .line 420
    .line 421
    add-long v5, v18, v16

    .line 422
    .line 423
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 424
    .line 425
    .line 426
    move-result-wide v16

    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    move-wide v1, v8

    .line 430
    move-wide v3, v10

    .line 431
    move-wide/from16 v18, v10

    .line 432
    .line 433
    move-wide v10, v5

    .line 434
    move-wide/from16 v5, v28

    .line 435
    .line 436
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 437
    .line 438
    .line 439
    move-result-wide v0

    .line 440
    add-long v16, v16, v0

    .line 441
    .line 442
    aget-wide v0, v30, v23

    .line 443
    .line 444
    add-long v16, v16, v0

    .line 445
    .line 446
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 447
    .line 448
    add-int/lit8 v20, v24, 0x7

    .line 449
    .line 450
    aget-wide v1, v0, v23

    .line 451
    .line 452
    add-long v16, v16, v1

    .line 453
    .line 454
    add-long v16, v16, v21

    .line 455
    .line 456
    add-long v12, v12, v16

    .line 457
    .line 458
    invoke-direct {v7, v10, v11}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 459
    .line 460
    .line 461
    move-result-wide v21

    .line 462
    move-object/from16 v0, p0

    .line 463
    .line 464
    move-wide v1, v10

    .line 465
    move-wide v3, v14

    .line 466
    move-wide/from16 v5, v31

    .line 467
    .line 468
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 469
    .line 470
    .line 471
    move-result-wide v0

    .line 472
    add-long v21, v21, v0

    .line 473
    .line 474
    add-long v5, v21, v16

    .line 475
    .line 476
    invoke-direct {v7, v12, v13}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum1(J)J

    .line 477
    .line 478
    .line 479
    move-result-wide v16

    .line 480
    move-object/from16 v0, p0

    .line 481
    .line 482
    move-wide v1, v12

    .line 483
    move-wide v3, v8

    .line 484
    move-wide/from16 v21, v8

    .line 485
    .line 486
    move-wide v8, v5

    .line 487
    move-wide/from16 v5, v18

    .line 488
    .line 489
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    .line 490
    .line 491
    .line 492
    move-result-wide v0

    .line 493
    add-long v16, v16, v0

    .line 494
    .line 495
    aget-wide v0, v30, v20

    .line 496
    .line 497
    add-long v16, v16, v0

    .line 498
    .line 499
    iget-object v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 500
    .line 501
    add-int/lit8 v24, v24, 0x8

    .line 502
    .line 503
    aget-wide v1, v0, v20

    .line 504
    .line 505
    add-long v16, v16, v1

    .line 506
    .line 507
    add-long v16, v16, v28

    .line 508
    .line 509
    add-long v28, v31, v16

    .line 510
    .line 511
    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/digests/LongDigest;->Sum0(J)J

    .line 512
    .line 513
    .line 514
    move-result-wide v30

    .line 515
    move-object/from16 v0, p0

    .line 516
    .line 517
    move-wide v1, v8

    .line 518
    move-wide v3, v10

    .line 519
    move-wide v5, v14

    .line 520
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    .line 521
    .line 522
    .line 523
    move-result-wide v0

    .line 524
    add-long v30, v30, v0

    .line 525
    .line 526
    add-long v0, v30, v16

    .line 527
    .line 528
    add-int/lit8 v3, v27, 0x1

    .line 529
    .line 530
    move-wide/from16 v16, v10

    .line 531
    .line 532
    move-wide/from16 v5, v28

    .line 533
    .line 534
    move-wide/from16 v38, v18

    .line 535
    .line 536
    move-wide/from16 v18, v21

    .line 537
    .line 538
    move-wide/from16 v22, v12

    .line 539
    .line 540
    move-wide/from16 v20, v14

    .line 541
    .line 542
    move-wide/from16 v11, v38

    .line 543
    .line 544
    move-wide v13, v8

    .line 545
    move-wide v8, v0

    .line 546
    goto/16 :goto_1

    .line 547
    .line 548
    :cond_1
    move-wide/from16 v28, v5

    .line 549
    .line 550
    move-wide/from16 v34, v8

    .line 551
    .line 552
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 553
    .line 554
    add-long v0, v0, v34

    .line 555
    .line 556
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 557
    .line 558
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 559
    .line 560
    add-long/2addr v0, v13

    .line 561
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 562
    .line 563
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 564
    .line 565
    add-long v0, v0, v16

    .line 566
    .line 567
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 568
    .line 569
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 570
    .line 571
    add-long v0, v0, v20

    .line 572
    .line 573
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 574
    .line 575
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 576
    .line 577
    add-long v0, v0, v28

    .line 578
    .line 579
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 580
    .line 581
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 582
    .line 583
    add-long v0, v0, v22

    .line 584
    .line 585
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 586
    .line 587
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 588
    .line 589
    add-long v0, v0, v18

    .line 590
    .line 591
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 592
    .line 593
    iget-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 594
    .line 595
    add-long/2addr v0, v11

    .line 596
    iput-wide v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 597
    .line 598
    const/4 v0, 0x0

    .line 599
    iput v0, v7, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 600
    .line 601
    const/16 v0, 0x10

    .line 602
    .line 603
    const/4 v10, 0x0

    .line 604
    :goto_2
    if-ge v10, v0, :cond_2

    .line 605
    .line 606
    iget-object v1, v7, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 607
    .line 608
    const-wide/16 v2, 0x0

    .line 609
    .line 610
    aput-wide v2, v1, v10

    .line 611
    .line 612
    add-int/lit8 v10, v10, 0x1

    .line 613
    .line 614
    goto :goto_2

    .line 615
    :cond_2
    return-void
.end method

.method public processLength(JJ)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->processBlock()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 11
    .line 12
    aput-wide p3, v0, v1

    .line 13
    .line 14
    const/16 p3, 0xf

    .line 15
    .line 16
    aput-wide p1, v0, p3

    .line 17
    .line 18
    return-void
.end method

.method public processWord([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 2
    .line 3
    iget v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 4
    .line 5
    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    aput-wide p1, v0, v1

    .line 10
    .line 11
    iget p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 16
    .line 17
    const/16 p2, 0x10

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->processBlock()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 4
    .line 5
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 9
    .line 10
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 11
    .line 12
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 13
    .line 14
    .line 15
    iput v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 16
    .line 17
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public restoreState([B)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 8
    .line 9
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0xc

    .line 16
    .line 17
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 22
    .line 23
    const/16 v0, 0x14

    .line 24
    .line 25
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 30
    .line 31
    const/16 v0, 0x1c

    .line 32
    .line 33
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H1:J

    .line 38
    .line 39
    const/16 v0, 0x24

    .line 40
    .line 41
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H2:J

    .line 46
    .line 47
    const/16 v0, 0x2c

    .line 48
    .line 49
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H3:J

    .line 54
    .line 55
    const/16 v0, 0x34

    .line 56
    .line 57
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H4:J

    .line 62
    .line 63
    const/16 v0, 0x3c

    .line 64
    .line 65
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H5:J

    .line 70
    .line 71
    const/16 v0, 0x44

    .line 72
    .line 73
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H6:J

    .line 78
    .line 79
    const/16 v0, 0x4c

    .line 80
    .line 81
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H7:J

    .line 86
    .line 87
    const/16 v0, 0x54

    .line 88
    .line 89
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->H8:J

    .line 94
    .line 95
    const/16 v0, 0x5c

    .line 96
    .line 97
    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 102
    .line 103
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->wOff:I

    .line 104
    .line 105
    if-ge v2, v0, :cond_0

    .line 106
    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->W:[J

    .line 108
    .line 109
    mul-int/lit8 v1, v2, 0x8

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x60

    .line 112
    .line 113
    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    aput-wide v3, v0, v2

    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 2
    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 4
    iput p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    return-void
.end method

.method public update([BII)V
    .locals 5

    .line 6
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 7
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 10
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v0

    add-int/2addr p2, v1

    .line 11
    array-length v1, v0

    sub-int/2addr p3, v1

    .line 12
    iget-wide v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 13
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
