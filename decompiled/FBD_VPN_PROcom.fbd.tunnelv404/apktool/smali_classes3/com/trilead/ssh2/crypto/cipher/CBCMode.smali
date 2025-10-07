.class public Lcom/trilead/ssh2/crypto/cipher/CBCMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# instance fields
.field blockSize:I

.field cbc_vector:[B

.field doEncrypt:Z

.field tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field tmp_vector:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->doEncrypt:Z

    .line 13
    .line 14
    array-length p3, p2

    .line 15
    if-ne p1, p3, :cond_0

    .line 16
    .line 17
    new-array p3, p1, [B

    .line 18
    .line 19
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 20
    .line 21
    new-array v0, p1, [B

    .line 22
    .line 23
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    new-array v1, v1, [J

    .line 41
    .line 42
    fill-array-data v1, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    new-array v1, v1, [J

    .line 64
    .line 65
    fill-array-data v1, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    array-length p2, p2

    .line 79
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-static {p2, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :array_0
    .array-data 8
        0x79180e305cc32797L    # 2.082136016465667E275
        0x77aa866143f50b51L    # 2.7369084078392315E268
        -0x6552e9a68e2bc47aL
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x3931302e6bbee48eL    # -1.2498747586910738E33
        -0x7022d488a2d024d3L
        -0x509eca8c3c957506L    # -1.8141855128042785E-80
        0x752dff5438f819ebL    # 2.8150728348870253E256
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 8
        -0x570321e887ae3896L    # -3.000899656872936E-111
        -0x521f91596f90567dL    # -1.0325420587295671E-87
    .end array-data
.end method

.method private decryptBlock([BI[BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 15
    .line 16
    if-ge v2, p1, :cond_0

    .line 17
    .line 18
    add-int p1, p4, v2

    .line 19
    .line 20
    aget-byte p2, p3, p1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 23
    .line 24
    aget-byte v0, v0, v2

    .line 25
    .line 26
    xor-int/2addr p2, v0

    .line 27
    int-to-byte p2, p2

    .line 28
    aput-byte p2, p3, p1

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 34
    .line 35
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    .line 36
    .line 37
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 38
    .line 39
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    .line 40
    .line 41
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 8
    .line 9
    aget-byte v3, v2, v1

    .line 10
    .line 11
    add-int v4, p2, v1

    .line 12
    .line 13
    aget-byte v4, p1, v4

    .line 14
    .line 15
    xor-int/2addr v3, v4

    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, v2, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 25
    .line 26
    invoke-interface {p1, p2, v0, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 30
    .line 31
    iget p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 32
    .line 33
    invoke-static {p3, p4, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 2
    .line 3
    return v0
.end method

.method public init(Z[B)V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->doEncrypt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->encryptBlock([BI[BI)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->decryptBlock([BI[BI)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
