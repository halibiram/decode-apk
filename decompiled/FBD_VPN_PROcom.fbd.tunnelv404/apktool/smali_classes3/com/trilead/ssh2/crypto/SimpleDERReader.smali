.class public Lcom/trilead/ssh2/crypto/SimpleDERReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field buffer:[B

.field count:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method private readByte()B
    .locals 3

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 10
    .line 11
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 12
    .line 13
    add-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 16
    .line 17
    aget-byte v0, v0, v1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 21
    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :array_0
    .array-data 8
        0x1bf673ca6db7ca0bL    # 5.673662495431795E-174
        0x546ad0df29c957cbL    # 4.582274069202414E98
        0x378082dca6f15cf4L    # 2.369238048278231E-41
        -0x5864de77621178b3L    # -6.724304373859603E-118
        -0x416e0abeedc84333L    # -2.6759541268870335E-7
    .end array-data
.end method

.method private readBytes(I)[B
    .locals 4

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    new-array v0, p1, [B

    .line 6
    .line 7
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 8
    .line 9
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 16
    .line 17
    add-int/2addr v1, p1

    .line 18
    iput v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 19
    .line 20
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 21
    .line 22
    sub-int/2addr v1, p1

    .line 23
    iput v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :array_0
    .array-data 8
        -0x2e6e7ce141f066e4L    # -8.505095638957135E84
        -0x19ac991a43e2c86dL    # -8.244087238862229E184
        -0x6f86ecbc0c9d2349L
        -0x7b9ee0f0a8d53f9bL    # -1.405502403092645E-287
        0x47d24d142e5edc0bL    # 9.73052804171233E37
    .end array-data
.end method

.method private readLength()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0xff

    .line 6
    .line 7
    and-int/lit16 v2, v0, 0x80

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-le v0, v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-lez v0, :cond_2

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    or-int/2addr v2, v3

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-gez v2, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    return v2

    .line 40
    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public ignoreNextObject()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gt v1, v2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    new-array v4, v4, [J

    .line 34
    .line 35
    fill-array-data v4, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    new-array v3, v3, [J

    .line 55
    .line 56
    fill-array-data v3, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x28f0990a6d90b122L    # 1.725410919699264E-111
        0x65bf4052daf43b7fL    # 1.296776076413076E182
        0x1e46444f44365b6cL    # 7.733406442293492E-163
        -0x140edd032992ad6fL    # -9.014121570739092E211
        0x39497beccc8d7133L    # 9.816111332158888E-33
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
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
    :array_1
    .array-data 8
        0x203de11ee04fd675L
        -0x7a82912ed51d722cL
    .end array-data
.end method

.method public readConstructed()Lcom/trilead/ssh2/crypto/SimpleDERReader;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 16
    .line 17
    iget v3, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 26
    .line 27
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 28
    .line 29
    sub-int/2addr v2, v0

    .line 30
    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v4, 0x5

    .line 43
    new-array v4, v4, [J

    .line 44
    .line 45
    fill-array-data v4, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    new-array v3, v3, [J

    .line 65
    .line 66
    fill-array-data v3, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x2f59e8fa5e724de6L    # -3.2740340582079564E80
        -0x6760209fbea26ab1L    # -4.470949148293629E-190
        0x5e7a781baaaeb86bL    # 1.3220815971353984E147
        0x6ca117a44d895c75L    # 1.84131764537417E215
        -0x5a334f52487bdb5bL
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
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        0x50c6b7ac135c675aL    # 1.3468176618655825E81
        -0x90f070e782608eaL
    .end array-data
.end method

.method public readConstructedType()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0xff

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    and-int/lit8 v3, v0, 0x20

    .line 10
    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v4, 0x6

    .line 26
    new-array v4, v4, [J

    .line 27
    .line 28
    fill-array-data v4, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x482bf2aa48b3e57fL    # 4.7550906234487986E39
        0x4d13a7ad455ebe41L    # 2.0213982350542182E63
        -0x451547045a660b91L    # -6.9076275693204E-25
        0x171d2a000c441897L
        -0x1bd8c6f34aa9ac7L
        -0x46710867b078a506L    # -1.9084990659001846E-31
    .end array-data
.end method

.method public readInt()Ljava/math/BigInteger;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gt v0, v2, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/math/BigInteger;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v5, 0x5

    .line 43
    new-array v5, v5, [J

    .line 44
    .line 45
    fill-array-data v5, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
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
    invoke-static {v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v4, 0x6

    .line 89
    new-array v4, v4, [J

    .line 90
    .line 91
    fill-array-data v4, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :array_0
    .array-data 8
        -0x6313bbfcada21e12L
        0x161a1b8460164c7cL
        0xe1f373f3467c9bfL
        -0x7e9ab575dc7aa364L    # -6.209460832637855E-302
        0x224d01379824ee72L
    .end array-data

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
    :array_1
    .array-data 8
        -0x11d7e45fe3c916a8L    # -4.3571890909261194E222
        -0x471d24a22d0f03c1L    # -1.1349084100102415E-34
    .end array-data

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
    .line 140
    .line 141
    :array_2
    .array-data 8
        -0x2f4e848025b7964eL    # -5.182274287411954E80
        -0x65685d7a27b62f52L
        -0x3196a5c3f508cb6L    # -4.50751151813575E293
        -0x2a095262eaaca674L    # -1.300309255061609E106
        -0x213d0d55e3aa80edL    # -3.0285109709685007E148
        0xc4e202df8b8aa9aL
    .end array-data
.end method

.method public readOctetString()[B
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v4, 0x7

    .line 24
    new-array v4, v4, [J

    .line 25
    .line 26
    fill-array-data v4, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ltz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-gt v0, v1, :cond_2

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v4, 0x5

    .line 67
    new-array v4, v4, [J

    .line 68
    .line 69
    fill-array-data v4, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v3, 0x2

    .line 88
    new-array v3, v3, [J

    .line 89
    .line 90
    fill-array-data v3, :array_2

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        -0x790fd9b08dbee32eL    # -2.9153256908876E-275
        0x3e1aeb0df77cfeb0L    # 1.5668444024461618E-9
        -0xc60dd1fdab7e6edL    # -8.70808180095905E248
        -0x50208d7b3701e531L    # -4.2435080797862687E-78
        -0x12de23e428a9ab8dL    # -4.925422265449432E217
        -0x43365b0348c3a12cL    # -7.117773353090781E-16
        -0x2061f311e24b6b6eL    # -3.9346820734362707E152
    .end array-data

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
    :array_1
    .array-data 8
        -0x37e5b313f5dd5c86L    # -2.2373971138127787E39
        0x1c29f07e912b6c52L    # 5.243882495987121E-173
        0x59820a994e08d762L    # 1.4907970386876668E123
        -0x67d6469f39410c11L
        0x415782647214351aL    # 6162833.7824833635
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        0x6aebb77dd0e1ab50L    # 1.1123195115548337E207
        -0x5d2f6b639094851L    # -3.294177421147622E280
    .end array-data
.end method

.method public readOid()Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    if-ne v1, v2, :cond_5

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lt v1, v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-gt v1, v2, :cond_4

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v4, 0x40

    .line 30
    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aget-byte v5, v2, v4

    .line 36
    .line 37
    div-int/lit8 v5, v5, 0x28

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    if-eq v5, v0, :cond_0

    .line 42
    .line 43
    const/16 v5, 0x32

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    aget-byte v5, v2, v4

    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x50

    .line 51
    .line 52
    int-to-byte v5, v5

    .line 53
    aput-byte v5, v2, v4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v5, 0x31

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    aget-byte v5, v2, v4

    .line 62
    .line 63
    add-int/lit8 v5, v5, -0x28

    .line 64
    .line 65
    int-to-byte v5, v5

    .line 66
    aput-byte v5, v2, v4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/16 v5, 0x30

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_0
    const-wide/16 v5, 0x0

    .line 75
    .line 76
    move-wide v7, v5

    .line 77
    :goto_1
    if-ge v4, v1, :cond_3

    .line 78
    .line 79
    const/4 v9, 0x7

    .line 80
    shl-long/2addr v7, v9

    .line 81
    aget-byte v9, v2, v4

    .line 82
    .line 83
    and-int/lit8 v10, v9, 0x7f

    .line 84
    .line 85
    int-to-long v10, v10

    .line 86
    add-long/2addr v7, v10

    .line 87
    and-int/lit16 v9, v9, 0x80

    .line 88
    .line 89
    if-nez v9, :cond_2

    .line 90
    .line 91
    const/16 v9, 0x2e

    .line 92
    .line 93
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-wide v7, v5

    .line 100
    :cond_2
    add-int/2addr v4, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    const/4 v4, 0x5

    .line 117
    new-array v4, v4, [J

    .line 118
    .line 119
    fill-array-data v4, :array_0

    .line 120
    .line 121
    .line 122
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 v3, 0x2

    .line 138
    new-array v3, v3, [J

    .line 139
    .line 140
    fill-array-data v3, :array_1

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v2, v2, [J

    .line 164
    .line 165
    fill-array-data v2, :array_2

    .line 166
    .line 167
    .line 168
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v3, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :array_0
    .array-data 8
        -0x4d6be7327bbc60e2L    # -4.770783546939841E-65
        -0x6c8f6d4f0a189bb4L    # -4.80755839225222E-215
        0x21ab1eb06635892dL
        -0x7fc88bf3e3ffd8a1L    # -1.304633661864147E-307
        0x679d4252ee2bcc32L    # 1.3036406789239098E191
    .end array-data

    :array_1
    .array-data 8
        0x708fcd3f0dff694dL    # 1.579929023252315E234
        -0x6c8adc965a67e91dL    # -6.131882079495965E-215
    .end array-data

    :array_2
    .array-data 8
        0x26de40071d837966L
        -0x55562c12979bfef7L
        -0x443bfdb3be9ef6c9L    # -8.47413098388109E-21
        0xdd5413513ae30f1L
        0xd54419e91df528L
        0x48942d596b8330c0L    # 4.394193211687235E41
    .end array-data
.end method

.method public readSequenceAsByteArray()[B
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/16 v1, 0x30

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v4, 0x5

    .line 38
    new-array v4, v4, [J

    .line 39
    .line 40
    fill-array-data v4, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    new-array v3, v3, [J

    .line 60
    .line 61
    fill-array-data v3, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    const/4 v4, 0x6

    .line 85
    new-array v4, v4, [J

    .line 86
    .line 87
    fill-array-data v4, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :array_0
    .array-data 8
        0x523cbac771c2b6afL    # 1.4287900527129556E88
        -0x755f7c86dfcb7da3L
        -0x72d396e3a32fcfbcL    # -3.2506767155823E-245
        0x5bcdfb9aaca19330L    # 1.70255321120774E134
        0x1803a539f122e7b1L    # 5.38237563518731E-193
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
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 8
        -0x26c7ff203c9d34fcL    # -6.198281379411154E121
        -0x3f13c2deb3c2e373L    # -57833.040556484
    .end array-data

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
        -0x42897473e9d2ea50L    # -1.2815409208012647E-12
        0x5fc5450a551e2e64L    # 2.227967997285222E153
        0x79f820e6102a2301L    # 3.4217360560925477E279
        0x7850b1d89fc4245dL    # 3.527889949921965E271
        0x2d6d34b578f46a77L    # 7.168723181521639E-90
        -0x660018628df640caL
    .end array-data
.end method

.method public resetInput([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method public resetInput([BII)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 3
    iput p2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 4
    iput p3, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-void
.end method
