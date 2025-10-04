.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardBaseEncoding"
.end annotation


# instance fields
.field final alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

.field private transient lowerCase:Lcom/google/common/io/BaseEncoding;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final paddingChar:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient upperCase:Lcom/google/common/io/BaseEncoding;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .locals 2
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->matches(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    return-void

    :array_0
    .array-data 8
        -0x3ba48d154c51e838L    # -2.0253708736613465E21
        -0x54001521dec03d5dL    # -9.339198751038301E-97
        0x9e07477e897a05cL
        0x1730317974389e46L    # 5.415731436592059E-197
        0x79e5b18eb2f2370aL    # 1.538215909669285E279
        0x53274d81781fe4ebL    # 3.797484314934977E92
        0x780834aa3213ae40L    # 1.5984688179590456E270
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public canDecode(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v0, v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->canDecode(C)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method public decodeTo([BLjava/lang/CharSequence;)I
    .locals 13

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v1, v3, :cond_3

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    :goto_1
    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 34
    .line 35
    iget v8, v7, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 36
    .line 37
    if-ge v5, v8, :cond_1

    .line 38
    .line 39
    iget v7, v7, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 40
    .line 41
    shl-long/2addr v3, v7

    .line 42
    add-int v7, v1, v5

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ge v7, v8, :cond_0

    .line 49
    .line 50
    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 51
    .line 52
    add-int/lit8 v8, v6, 0x1

    .line 53
    .line 54
    add-int/2addr v6, v1

    .line 55
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {v7, v6}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    or-long/2addr v3, v6

    .line 65
    move v6, v8

    .line 66
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget v5, v7, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 70
    .line 71
    mul-int/lit8 v8, v5, 0x8

    .line 72
    .line 73
    iget v7, v7, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 74
    .line 75
    mul-int v6, v6, v7

    .line 76
    .line 77
    sub-int/2addr v8, v6

    .line 78
    add-int/lit8 v5, v5, -0x1

    .line 79
    .line 80
    mul-int/lit8 v5, v5, 0x8

    .line 81
    .line 82
    :goto_2
    if-lt v5, v8, :cond_2

    .line 83
    .line 84
    add-int/lit8 v6, v2, 0x1

    .line 85
    .line 86
    ushr-long v9, v3, v5

    .line 87
    .line 88
    const-wide/16 v11, 0xff

    .line 89
    .line 90
    and-long/2addr v9, v11

    .line 91
    long-to-int v7, v9

    .line 92
    int-to-byte v7, v7

    .line 93
    aput-byte v7, p1, v2

    .line 94
    .line 95
    add-int/lit8 v5, v5, -0x8

    .line 96
    .line 97
    move v2, v6

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 100
    .line 101
    iget v3, v3, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 102
    .line 103
    add-int/2addr v1, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    return v2

    .line 106
    :cond_4
    new-instance p1, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 107
    .line 108
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const/16 v1, 0x20

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 v2, 0x4

    .line 122
    new-array v2, v2, [J

    .line 123
    .line 124
    fill-array-data v2, :array_0

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p1, p2}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    nop

    .line 139
    :array_0
    .array-data 8
        -0x376b9da17db45faaL    # -4.43929753639384E41
        -0x11fc3226bb5a7e1fL    # -8.948327192389575E221
        0x51f715d23c4a437dL    # 7.175516166814449E86
        0x746e7eb6f27205d0L    # 6.986742200181147E252
    .end array-data
.end method

.method public decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Reader;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public encodeChunkTo(Ljava/lang/Appendable;[BII)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    add-int v0, p3, p4

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 11
    .line 12
    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-gt p4, v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_1
    const/16 v4, 0x8

    .line 27
    .line 28
    if-ge v0, p4, :cond_1

    .line 29
    .line 30
    add-int v5, p3, v0

    .line 31
    .line 32
    aget-byte v5, p2, v5

    .line 33
    .line 34
    and-int/lit16 v5, v5, 0xff

    .line 35
    .line 36
    int-to-long v5, v5

    .line 37
    or-long/2addr v2, v5

    .line 38
    shl-long/2addr v2, v4

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 p2, p4, 0x1

    .line 43
    .line 44
    mul-int/lit8 p2, p2, 0x8

    .line 45
    .line 46
    iget-object p3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 47
    .line 48
    iget p3, p3, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 49
    .line 50
    sub-int/2addr p2, p3

    .line 51
    :goto_2
    mul-int/lit8 p3, p4, 0x8

    .line 52
    .line 53
    if-ge v1, p3, :cond_2

    .line 54
    .line 55
    sub-int p3, p2, v1

    .line 56
    .line 57
    ushr-long v5, v2, p3

    .line 58
    .line 59
    long-to-int p3, v5

    .line 60
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 61
    .line 62
    iget v5, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 63
    .line 64
    and-int/2addr p3, v5

    .line 65
    invoke-virtual {v0, p3}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 70
    .line 71
    .line 72
    iget-object p3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 73
    .line 74
    iget p3, p3, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 75
    .line 76
    add-int/2addr v1, p3

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 79
    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    :goto_3
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 83
    .line 84
    iget p2, p2, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 85
    .line 86
    mul-int/lit8 p2, p2, 0x8

    .line 87
    .line 88
    if-ge v1, p2, :cond_3

    .line 89
    .line 90
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 100
    .line 101
    iget p2, p2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 102
    .line 103
    add-int/2addr v1, p2

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    return-void
.end method

.method public encodeTo(Ljava/lang/Appendable;[BII)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    add-int v0, p3, p4

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p4, :cond_0

    .line 12
    .line 13
    add-int v1, p3, v0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 16
    .line 17
    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 18
    .line 19
    sub-int v3, p4, v0

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 29
    .line 30
    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Writer;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->lowerCase:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->lowerCase:Lcom/google/common/io/BaseEncoding;

    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public maxDecodedSize(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    int-to-long v2, p1

    .line 7
    mul-long v0, v0, v2

    .line 8
    .line 9
    const-wide/16 v2, 0x7

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int p1, v0

    .line 16
    return p1
.end method

.method public maxEncodedSize(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 4
    .line 5
    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 6
    .line 7
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 8
    .line 9
    invoke-static {p1, v0, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int p1, p1, v1

    .line 14
    .line 15
    return p1
.end method

.method public newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 1
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 31
    .line 32
    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    rem-int/2addr v3, v1

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    fill-array-data v2, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v2, v2, [J

    .line 64
    .line 65
    fill-array-data v2, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v2, 0x2

    .line 86
    new-array v2, v2, [J

    .line 87
    .line 88
    fill-array-data v2, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        0x7d17eb658fb44892L
        0x7ef6ab4a2a6f3541L    # 3.8864217964112405E303
        -0x11e52922abe8f6f7L    # -2.425427179768743E222
    .end array-data

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
    :array_1
    .array-data 8
        -0x61b306383a644d7L    # -1.4756336889998038E279
        -0x1e9e84389224bf65L    # -1.2290126937575746E161
        0x642c3bb143ae5a78L    # 3.4914610794088423E174
    .end array-data

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
        -0x31d9b07284d68bf2L    # -3.0074834983418097E68
        -0x3ebf4c7023bc43e0L    # -2189087.720817104
        0x22c3bcd844d09d79L
    .end array-data

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
    :array_3
    .array-data 8
        -0x7acae9b36f2761bdL
        0x4af61eb7d94d3483L    # 1.324171497898537E53
    .end array-data
.end method

.method public trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v2, v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->upperCase:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->upperCase:Lcom/google/common/io/BaseEncoding;

    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    rem-int/2addr v1, v0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    :goto_0
    return-object p0
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->matches(C)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    xor-int/2addr v3, v0

    .line 21
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/16 v5, 0x8

    .line 24
    .line 25
    new-array v5, v5, [J

    .line 26
    .line 27
    fill-array-data v5, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    add-int/2addr v2, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-gez v2, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v2, 0x7

    .line 61
    new-array v2, v2, [J

    .line 62
    .line 63
    fill-array-data v2, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    new-instance v0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        -0x226f4216ccfb0e6aL    # -5.103888033797125E142
        -0x5ac3084d797129c4L
        0x143f53e3a3980d4aL
        0x66f09c6c8e446d3eL    # 7.227596711379504E187
        0x39fa0ae9767106dfL    # 2.0544008619431104E-29
        0xfe19bfbbf8b436eL    # 3.544505819750026E-232
        -0x78bc45693ee05325L
        -0x319aca6ac47d4f4dL    # -4.574414577144461E69
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
        -0x2af9cc003b87aaa7L    # -3.885103479020842E101
        -0x5954a8cd61ac9708L
        -0x130c8a27109e809aL    # -6.708529760967007E216
        -0x767b339e481e035cL    # -8.256253361468981E-263
        -0x1a8debfc757bb407L    # -4.688480334552306E180
        0x276bb598550424d7L    # 8.584562133491418E-119
        -0x529dbec0002c88ceL    # -4.480746293685864E-90
    .end array-data
.end method
