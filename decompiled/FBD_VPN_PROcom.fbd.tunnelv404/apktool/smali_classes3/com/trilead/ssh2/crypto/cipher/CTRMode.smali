.class public Lcom/trilead/ssh2/crypto/cipher/CTRMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# instance fields
.field X:[B

.field Xenc:[B

.field bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field blockSize:I

.field count:I

.field doEncrypt:Z


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->count:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    .line 14
    .line 15
    iput-boolean p3, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->doEncrypt:Z

    .line 16
    .line 17
    array-length p3, p2

    .line 18
    if-ne p1, p3, :cond_0

    .line 19
    .line 20
    new-array p3, p1, [B

    .line 21
    .line 22
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    .line 23
    .line 24
    new-array v1, p1, [B

    .line 25
    .line 26
    iput-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    .line 27
    .line 28
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v1, 0x4

    .line 65
    new-array v1, v1, [J

    .line 66
    .line 67
    fill-array-data v1, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    array-length p2, p2

    .line 81
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [J

    .line 88
    .line 89
    fill-array-data v0, :array_2

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-static {p2, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :array_0
    .array-data 8
        0x7fbf7c80a1e81749L    # 2.2110458304987058E307
        0x2c217985b8ffca69L    # 4.090543716296904E-96
        -0x1c1c152c7eea7c59L    # -1.539422275662284E173
    .end array-data

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
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x63a2f4bef240b309L    # 9.157040311680251E171
        -0x3a6bc6d2de686a6eL    # -1.564705523575504E27
        -0x54c5d2b149ce1987L    # -1.869997544077812E-100
        0x3f679a7fc468544dL    # 0.002881288094850143
    .end array-data

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
    .line 138
    .line 139
    :array_2
    .array-data 8
        -0x3d4f9b4898679330L    # -1.8024759793772812E13
        0x302877802cae1d6fL    # 1.0564970240755783E-76
    .end array-data
.end method


# virtual methods
.method public final getBlockSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    .line 2
    .line 3
    return v0
.end method

.method public init(Z[B)V
    .locals 0

    return-void
.end method

.method public final transformBlock([BI[BI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    .line 4
    .line 5
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, v1, v3, v2, v3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    .line 12
    .line 13
    if-ge v3, v0, :cond_0

    .line 14
    .line 15
    add-int v0, p4, v3

    .line 16
    .line 17
    add-int v1, p2, v3

    .line 18
    .line 19
    aget-byte v1, p1, v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    .line 22
    .line 23
    aget-byte v2, v2, v3

    .line 24
    .line 25
    xor-int/2addr v1, v2

    .line 26
    int-to-byte v1, v1

    .line 27
    aput-byte v1, p3, v0

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    :goto_1
    if-ltz v0, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    .line 37
    .line 38
    aget-byte p2, p1, v0

    .line 39
    .line 40
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    int-to-byte p2, p2

    .line 43
    aput-byte p2, p1, v0

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_2
    return-void
.end method
