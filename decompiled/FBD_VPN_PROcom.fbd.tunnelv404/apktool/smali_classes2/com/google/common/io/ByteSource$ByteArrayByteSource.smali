.class Lcom/google/common/io/ByteSource$ByteArrayByteSource;
.super Lcom/google/common/io/ByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayByteSource"
.end annotation


# instance fields
.field final bytes:[B

.field final length:I

.field final offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 4
    iput p2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 5
    iput p3, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    return-void
.end method


# virtual methods
.method public copyTo(Ljava/io/OutputStream;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/hash/HashFunction;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->openStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/io/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    .line 3
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    cmp-long v5, p1, v3

    .line 7
    .line 8
    if-ltz v5, :cond_0

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v5, 0x0

    .line 13
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v7, v0, [J

    .line 16
    .line 17
    fill-array-data v7, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-static {v5, v6, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    cmp-long v5, p3, v3

    .line 31
    .line 32
    if-ltz v5, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 53
    .line 54
    int-to-long v0, v0

    .line 55
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    sub-long/2addr v0, p1

    .line 63
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide p3

    .line 67
    iget v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 68
    .line 69
    long-to-int p2, p1

    .line 70
    add-int/2addr v0, p2

    .line 71
    new-instance p1, Lcom/google/common/io/ByteSource$ByteArrayByteSource;

    .line 72
    .line 73
    iget-object p2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 74
    .line 75
    long-to-int p4, p3

    .line 76
    invoke-direct {p1, p2, v0, p4}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([BII)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x5b5936486975d432L
        0x20eed56be26cebf4L
        -0x15461677f0a1c32dL    # -1.2998758672052546E206
        -0x5afa20c616832bcdL    # -2.465130613139326E-130
        0x79cabc73728d393bL    # 4.7394141166865373E278
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
        0x5b6b50ca2bc8935L
        0xa074f13981d33e9L
        -0x58a58149008e1558L    # -4.104169786224748E-119
        -0x1473eb6c8cfcecd0L    # -1.1539577197337643E210
        0xdba189458d198bdL
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 6
    .line 7
    iget v2, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->offset:I

    .line 8
    .line 9
    iget v3, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->length:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v3, v2, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v3, 0x1e

    .line 31
    .line 32
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Ascii;->truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-static {v1, v0}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    new-array v4, v4, [J

    .line 51
    .line 52
    fill-array-data v4, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v1, v2, [J

    .line 71
    .line 72
    fill-array-data v1, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :array_0
    .array-data 8
        0x2cd55fec6ae5faefL    # 1.0247109957351146E-92
        0x3beadb54e9f7f1e9L    # 4.5497128664309155E-20
    .end array-data

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
        -0x534d44b448da006fL    # -2.245002278914033E-93
        -0x12cca4e4d2314791L    # -1.0676032245265204E218
        0x11b146480589d377L
    .end array-data

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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_2
    .array-data 8
        0x2575b6d85846151bL
        0x956b24cfc69c227L
    .end array-data
.end method
