.class public Lcom/trilead/ssh2/SFTPv3Client;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field charsetName:Ljava/lang/String;

.field final conn:Lcom/trilead/ssh2/Connection;

.field final debug:Ljava/io/PrintStream;

.field flag_closed:Z

.field is:Ljava/io/InputStream;

.field next_request_id:I

.field os:Ljava/io/OutputStream;

.field protocol_version:I

.field server_extensions:Ljava/util/HashMap;

.field final sess:Lcom/trilead/ssh2/Session;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;-><init>(Lcom/trilead/ssh2/Connection;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/Connection;Ljava/io/PrintStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->flag_closed:Z

    .line 3
    iput v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    .line 5
    iput v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->conn:Lcom/trilead/ssh2/Connection;

    .line 8
    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->sess:Lcom/trilead/ssh2/Session;

    .line 11
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/Session;->startSubSystem(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    .line 13
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v0, 0x800

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    .line 14
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->init()V

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x12cdf85da77790bL
        -0x5e078533d8853ab0L
        0x97785427ec2c214L
        -0x3186de6c577835fcL    # -1.0840555446628216E70
        0x24d4ba5b1df30bf5L
        -0x3624f373f32d9f57L    # -6.176902393507386E47
        0x7d8e453a9f2bf2a0L    # 6.1864894354342626E296
    .end array-data

    :array_1
    .array-data 8
        0x27c255f88118e123L    # 3.635566611659058E-117
        0x78e9795eef266abeL    # 2.7561636388037994E274
    .end array-data

    :array_2
    .array-data 8
        -0x7b818292e3140c7aL
        -0x799b26c221a773bbL    # -7.350737497328454E-278
        0x352625347a6e99e3L    # 1.1560402709967672E-52
        0x5d21b00976d0ebfeL    # 4.212675346285591E140
        -0x711c690b65e25994L    # -6.016730200093325E-237
        -0x3642cf4ed4b674a2L    # -1.666466017279298E47
        0x7a9b2e46352ec71cL    # 3.94709452136783E282
        0x3aef9211fa3d275aL    # 8.160805418792546E-25
        -0x6d63c74d6e3523ecL
    .end array-data

    :array_3
    .array-data 8
        0xe9c3a8ee9d8b5e4L
        -0x79e5df30e46c75fcL
        -0x56f80b1075130f57L    # -4.9808109225844E-111
        -0x5e808d8674651550L
        0x23b7e93a3484626dL
    .end array-data
.end method

.method private final checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    .line 2
    .line 3
    if-ne v0, p0, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x1839813ea93a825dL    # -8.018181997546715E191
        0x57edc8ffd1703ac0L
        0x67b6cd6ae91b10e1L    # 4.06385364514537E191
        -0x78ad1c5d216a3ad5L    # -2.1823158219988E-273
        -0x490dbbb99da5f11aL    # -5.119419445079084E-44
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x4963d36e72d2adfbL    # 3.537059478319577E45
        0x6fec79d0750310baL    # 1.381539131798146E231
        -0x196f138ffb4d2e64L    # -1.15056109791664E186
        -0x50b60e87befffb9dL    # -6.837469594947941E-81
        -0x2e68c9c9dc22dacaL    # -1.1273192775809315E85
        0x4910b7cf7cbd7fc6L    # 9.320601894004047E43
        -0x650028496056d4d7L    # -1.2278109996236533E-178
        0x356f135d11fa0853L    # 2.5955584676799722E-51
        0x4cf4ce694e982a04L    # 5.349508154084038E62
        0x2f386fee14cc3844L
    .end array-data
.end method

.method private final closeHandle([B)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v2, p1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, p1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    or-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    :cond_2
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    or-int/lit8 v1, v1, 0x4

    .line 33
    .line 34
    :cond_3
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    or-int/lit8 v1, v1, 0x8

    .line 43
    .line 44
    :cond_4
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v2, :cond_6

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 80
    .line 81
    .line 82
    :cond_6
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 91
    .line 92
    .line 93
    :cond_7
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 94
    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    .line 98
    .line 99
    if-eqz v2, :cond_8

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 115
    .line 116
    .line 117
    :cond_8
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method

.method private final expandString([BII)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p3, :cond_1

    .line 9
    .line 10
    add-int v3, p2, v2

    .line 11
    .line 12
    aget-byte v3, p1, v3

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    if-lt v3, v4, :cond_0

    .line 19
    .line 20
    const/16 v4, 0x7e

    .line 21
    .line 22
    if-gt v3, v4, :cond_0

    .line 23
    .line 24
    int-to-char v3, v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v6, v0, [J

    .line 37
    .line 38
    fill-array-data v6, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v5, v0, [J

    .line 61
    .line 62
    fill-array-data v5, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x58a9e78f23b5029dL    # -3.422669866670916E-119
        -0x71ef8e1000eeeb1aL    # -6.165654134856532E-241
    .end array-data

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
    :array_1
    .array-data 8
        0x7240be43046204d4L    # 2.2328793320051393E242
        0x7e79df13b6f8e779L    # 1.7325888728044334E301
    .end array-data
.end method

.method private expectStatusOKMessage(I)V
    .locals 4

    .line 1
    const v0, 0x84d0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ne v2, p1, :cond_3

    .line 49
    .line 50
    const/16 p1, 0x65

    .line 51
    .line 52
    if-ne v0, p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v3, 0x7

    .line 81
    new-array v3, v3, [J

    .line 82
    .line 83
    fill-array-data v3, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    new-array v2, v2, [J

    .line 103
    .line 104
    fill-array-data v2, :array_2

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 119
    .line 120
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v1, 0x6

    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :array_0
    .array-data 8
        -0x775c74eb401cc98aL
        0x597c8ec4d8b968acL    # 1.1798895114530368E123
        0xf8c1fdf33a23bf6L    # 8.845414335544925E-234
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
    :array_1
    .array-data 8
        -0x1eac2e255dbdc247L    # -6.966196266092215E160
        0x5571e930fa0863a8L    # 4.0115852109736315E103
        -0x49acec0c7bb77fbbL    # -5.221461005073448E-47
        0x5bfc8f4992556124L    # 1.2973942380049193E135
        0x726e5cfdc80d0d24L    # 1.6197005750104154E243
        0x6298fbcd3c970a39L    # 9.207731366814932E166
        0x7f2fe016bc1ed023L    # 4.3718026965822407E304
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0xe930fc5bcc80469L
        0x6d2ac072e33dd78bL    # 7.377668361672947E217
    .end array-data

    :array_3
    .array-data 8
        -0x6bdf702e342e0b7eL    # -9.839215240537919E-212
        -0x38483adbfdb24534L    # -3.159585673344265E37
        0x11572535f4c09288L
        0x47b9688dbc99de31L    # 3.3773573530179006E37
        -0x1500a6b5d9cf8652L    # -2.516157280395251E207
        -0x3f3e6cf8531a5e16L    # -8998.059963897762
    .end array-data
.end method

.method private final generateNextRequestID()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method

.method private init()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x5

    .line 4
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v5, v2, [J

    .line 11
    .line 12
    fill-array-data v5, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v3, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-direct {p0, v4, v5, v3}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v6, v2, [J

    .line 49
    .line 50
    fill-array-data v6, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v3, Lcom/trilead/ssh2/packets/TypesReader;

    .line 64
    .line 65
    const v4, 0x84d0

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v4}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-direct {v3, v4}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-ne v4, v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iput v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 86
    .line 87
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 88
    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v8, 0x6

    .line 99
    new-array v8, v8, [J

    .line 100
    .line 101
    fill-array-data v8, :array_2

    .line 102
    .line 103
    .line 104
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v7, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 127
    .line 128
    if-ne v4, v0, :cond_5

    .line 129
    .line 130
    :cond_3
    :goto_0
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v6, p0, Lcom/trilead/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v6, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 150
    .line 151
    if-eqz v6, :cond_3

    .line 152
    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v9, v2, [J

    .line 161
    .line 162
    fill-array-data v9, :array_3

    .line 163
    .line 164
    .line 165
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v8, v1, [J

    .line 181
    .line 182
    fill-array-data v8, :array_4

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    array-length v0, v4

    .line 196
    invoke-direct {p0, v4, v5, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expandString([BII)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v4, v1, [J

    .line 206
    .line 207
    fill-array-data v4, :array_5

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_4
    return-void

    .line 229
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v0, v0, [J

    .line 239
    .line 240
    fill-array-data v0, :array_6

    .line 241
    .line 242
    .line 243
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 254
    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v2, v2, [J

    .line 261
    .line 262
    fill-array-data v2, :array_7

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v1

    .line 276
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 277
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 284
    .line 285
    const/16 v5, 0x8

    .line 286
    .line 287
    new-array v5, v5, [J

    .line 288
    .line 289
    fill-array-data v5, :array_8

    .line 290
    .line 291
    .line 292
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v1, v1, [J

    .line 308
    .line 309
    fill-array-data v1, :array_9

    .line 310
    .line 311
    .line 312
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-static {v3, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :array_0
    .array-data 8
        -0x788ef3eb29f69fd5L    # -7.878015182740695E-273
        0x6ec2128c24bfa683L    # 3.344751242023556E225
        0x437c1e592c8e868dL    # 1.26634683141744848E17
        -0x79b28ff7c7619684L
        0x2ac97d6c389af49aL
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_1
    .array-data 8
        0x649f0b7a563722daL    # 4.914132235687004E176
        0x3162ad6bbbebddf7L    # 8.456838404973346E-71
        -0x62a288de9b20684aL    # -3.123015015599269E-167
        -0x7a68c63a9ffbf216L    # -9.99613885093937E-282
        -0x13d94580ba25cf3aL    # -9.564401813228215E212
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_2
    .array-data 8
        -0x4ffdf604a891f221L    # -1.9473471305444503E-77
        -0x78d4772186a00e7aL
        0x67f9260fb9cf2ed3L    # 7.171209219312137E192
        -0x52e56f4d8fad829eL    # -2.0376743976913794E-91
        -0x15ff2df828d84d0cL    # -4.120066713397233E202
        0x4a2744032c693d92L    # 1.7001409901007227E49
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_3
    .array-data 8
        -0x6acc167312a5ac5aL
        0x1bd95055b0a860bL    # 2.76079097937435E-300
        0x106d8fd0a1950917L
        0x2208fa64574e07b9L    # 1.0001643782356288E-144
        -0x42570571753454f9L    # -1.1359014716121248E-11
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :array_4
    .array-data 8
        0x6a57a8a1b9738a5cL    # 1.8544207581468966E204
        0x66d89540fb96680bL    # 2.674068969832721E187
    .end array-data

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_5
    .array-data 8
        -0x7401213c25f46cbbL
        0x4978baad8dd5b097L    # 8.823677237251328E45
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_6
    .array-data 8
        0x215a1b2b73eb387aL    # 5.104164563655877E-148
        0x58801f7082512ae7L    # 2.0328674537544204E118
        0x7a3036a27948cbccL    # 3.678836777819215E280
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_7
    .array-data 8
        0x4ed21604a254a07fL    # 4.993001643879958E71
        -0x5420549e8bd64be1L    # -2.3166584730356985E-97
        0x45bebe88732ae97fL    # 9.514890566676513E27
        0x5b1e2ed52494ef08L    # 8.368732246990306E130
        0x32451014a8fd7f0fL    # 1.5625264774019217E-66
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_8
    .array-data 8
        0x6384e8b6158a1c44L
        0x39852e167ef6c2c4L    # 1.305320174900768E-31
        -0x3f4f9dab489cb7e7L    # -4194.330923276045
        0x5c409dd08e5dee1cL    # 2.4154978358112684E136
        0x79ffb695c855314cL    # 4.4973467658828965E279
        -0x571df26d6813b2d0L    # -9.383426026839655E-112
        -0x260a048a75370b64L    # -2.3250409122066188E125
        -0x3bd93a8b8a70639fL    # -2.1002824800202238E20
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_9
    .array-data 8
        0x165c8facf9d59d55L    # 5.830151759458609E-201
        -0x71cc803308a48148L    # -2.924292003698815E-240
    .end array-data
.end method

.method private final openDirectory(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    new-array v3, v3, [J

    .line 23
    .line 24
    fill-array-data v3, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/16 p1, 0xb

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 49
    .line 50
    .line 51
    const p1, 0x84d0

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 59
    .line 60
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-ne v2, v0, :cond_4

    .line 72
    .line 73
    const/16 v0, 0x66

    .line 74
    .line 75
    if-ne p1, v0, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    new-array v2, v2, [J

    .line 85
    .line 86
    fill-array-data v2, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_2
    const/16 v0, 0x65

    .line 110
    .line 111
    if-eq p1, v0, :cond_3

    .line 112
    .line 113
    new-instance v0, Ljava/io/IOException;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v3, 0x7

    .line 123
    new-array v3, v3, [J

    .line 124
    .line 125
    fill-array-data v3, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    const/4 v2, 0x2

    .line 144
    new-array v2, v2, [J

    .line 145
    .line 146
    fill-array-data v2, :array_3

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Lcom/trilead/ssh2/SFTPException;

    .line 169
    .line 170
    invoke-direct {v1, v0, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 175
    .line 176
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    const/4 v1, 0x6

    .line 179
    new-array v1, v1, [J

    .line 180
    .line 181
    fill-array-data v1, :array_4

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :array_0
    .array-data 8
        0x5051741bfdaf8776L    # 8.083933052859461E78
        0x7a3a15bb278777e8L    # 5.918681033974006E280
        0x501cb1182985ab8L
        -0xcba3f69bfc9804eL
        -0x7dc304963ad7a651L    # -6.92426837719909E-298
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_1
    .array-data 8
        -0x5afb849b1bf9eb8L
        0x242f15a8c792355fL
        0x5b930f7bb315dafaL    # 1.3529195195426638E133
        -0x6d86afdf3c698b5fL
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_2
    .array-data 8
        -0x353b9503e3cd995cL    # -1.5278493702353906E52
        0x5e71a1ee340eb98cL    # 8.807097461184147E146
        -0x6c03799ad0270b3fL
        0x3c5c60e8b3326f54L    # 6.153617268530773E-18
        -0x5573e0f55f3898daL
        0x6afd49c88e2ab41L
        -0x55cad56a23cd1ca0L
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_3
    .array-data 8
        0x1d017774b6397cd1L    # 5.785240638619834E-169
        -0x59c0c6b967bcdd84L    # -1.845043604646936E-124
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_4
    .array-data 8
        -0x79eda116d609a8deL
        -0x305db2f2a13d9507L    # -4.138885387949408E75
        -0x7bb62b9ef1f17b71L
        0x2ac0c4b5013dd2f1L    # 9.358425203018237E-103
        -0x3faff58bc2cff01L    # -2.558455835232021E289
        -0x681e72fdf1f6c179L    # -1.202126098392819E-193
    .end array-data
.end method

.method private openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, p1, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p3}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array p3, v0, [J

    .line 33
    .line 34
    fill-array-data p3, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 50
    .line 51
    .line 52
    :cond_0
    const/4 p1, 0x3

    .line 53
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p0, p1, v1, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 58
    .line 59
    .line 60
    const p1, 0x84d0

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    .line 68
    .line 69
    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-ne p3, v1, :cond_4

    .line 81
    .line 82
    const/16 p3, 0x66

    .line 83
    .line 84
    if-ne p1, p3, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v0, v0, [J

    .line 93
    .line 94
    fill-array-data v0, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 110
    .line 111
    .line 112
    :cond_1
    new-instance p1, Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p0, p2}, Lcom/trilead/ssh2/SFTPv3FileHandle;-><init>(Lcom/trilead/ssh2/SFTPv3Client;[B)V

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :cond_2
    const/16 p3, 0x65

    .line 123
    .line 124
    if-eq p1, p3, :cond_3

    .line 125
    .line 126
    new-instance p2, Ljava/io/IOException;

    .line 127
    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/4 v1, 0x7

    .line 136
    new-array v1, v1, [J

    .line 137
    .line 138
    fill-array-data v1, :array_2

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [J

    .line 158
    .line 159
    fill-array-data v0, :array_3

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p2

    .line 173
    :cond_3
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    new-instance p3, Lcom/trilead/ssh2/SFTPException;

    .line 182
    .line 183
    invoke-direct {p3, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    throw p3

    .line 187
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 188
    .line 189
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    const/4 p3, 0x6

    .line 192
    new-array p3, p3, [J

    .line 193
    .line 194
    fill-array-data p3, :array_4

    .line 195
    .line 196
    .line 197
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    nop

    .line 209
    :array_0
    .array-data 8
        0x1f335f5d74f6dd8cL
        -0x228dc1f43ec59d0cL
        0x64387a3d9e560e34L    # 6.054030575712483E174
        -0x7651507c0f5fc396L
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 8
        -0xa33d4594576386bL
        0x1404af67508bbebbL    # 3.072218955183782E-212
        0x5b1d68c8c7779cf1L    # 8.154231267389287E130
        0x125f8276da194deaL
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_2
    .array-data 8
        -0x7d948b14bf1b80fL    # -6.000381083491812E270
        0x5616252c961fe7a6L    # 5.079001212064678E106
        0x23e8832b924e82baL
        -0x706c5a420843424dL
        0xddc184591b263c8L
        -0x647043814c732f35L    # -6.265402150088534E-176
        0x298f223fa460bcc6L    # 1.6570800030281121E-108
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_3
    .array-data 8
        -0x2aace0bc408883e6L    # -1.0707171132502046E103
        0x7c61f3bad2c44981L    # 1.3995884313583123E291
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_4
    .array-data 8
        0x626128308d5ec359L    # 7.90403305469848E165
        0x101a7146fabe0967L    # 4.2580001872081674E-231
        0x1dc9d3a35057dd32L
        0x61d709f40a6fb9a6L    # 2.0729987023493138E163
        -0x690e40dc55cffba7L    # -3.709530541968813E-198
        -0x1c445aa42fb5f32cL
    .end array-data
.end method

.method private readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x5

    .line 4
    new-instance v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 5
    .line 6
    invoke-direct {v3}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    and-int/lit8 v5, v4, 0x1

    .line 14
    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    iget-object v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v7, v1, [J

    .line 24
    .line 25
    fill-array-data v7, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance v5, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT64()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 45
    .line 46
    .line 47
    iput-object v5, v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 48
    .line 49
    :cond_1
    and-int/lit8 v5, v4, 0x2

    .line 50
    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    iget-object v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v7, v2, [J

    .line 60
    .line 61
    fill-array-data v7, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    new-instance v5, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object v5, v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 84
    .line 85
    new-instance v5, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iput-object v5, v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 95
    .line 96
    :cond_3
    and-int/2addr v1, v4

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v6, v2, [J

    .line 106
    .line 107
    fill-array-data v6, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    new-instance v1, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 127
    .line 128
    .line 129
    iput-object v1, v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 130
    .line 131
    :cond_5
    and-int/lit8 v1, v4, 0x8

    .line 132
    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 136
    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v6, v2, [J

    .line 142
    .line 143
    fill-array-data v6, :array_3

    .line 144
    .line 145
    .line 146
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    new-instance v1, Ljava/lang/Long;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    int-to-long v5, v5

    .line 163
    const-wide v7, 0xffffffffL

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    and-long/2addr v5, v7

    .line 169
    invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 170
    .line 171
    .line 172
    iput-object v1, v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 173
    .line 174
    new-instance v1, Ljava/lang/Long;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    int-to-long v5, v5

    .line 181
    and-long/2addr v5, v7

    .line 182
    invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 183
    .line 184
    .line 185
    iput-object v1, v3, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    .line 186
    .line 187
    :cond_7
    const/high16 v1, -0x80000000

    .line 188
    .line 189
    and-int/2addr v1, v4

    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 197
    .line 198
    if-eqz v4, :cond_8

    .line 199
    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v2, v2, [J

    .line 208
    .line 209
    fill-array-data v2, :array_4

    .line 210
    .line 211
    .line 212
    invoke-direct {v6, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v0, v0, [J

    .line 228
    .line 229
    fill-array-data v0, :array_5

    .line 230
    .line 231
    .line 232
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    :goto_0
    if-lez v1, :cond_9

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 255
    .line 256
    .line 257
    add-int/lit8 v1, v1, -0x1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_9
    return-object v3

    .line 261
    :array_0
    .array-data 8
        -0x604e1938c1547c7cL
        0x4574ed86de373582L    # 4.048032819962304E26
        0x1d2d1b7ceaeec38L
        0xdbf4ee5137f1794L
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_1
    .array-data 8
        -0x84dddf1921a00c7L    # -3.742024216529777E268
        0x359fd057248bbe35L    # 2.1257720324051402E-50
        0x35baa3363da7586dL    # 7.119589397990902E-50
        0x356634d6f17496e9L    # 1.854765469205019E-51
        0x71bc887e2f5e9de1L    # 7.432016624567696E239
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_2
    .array-data 8
        -0x42e8b9d2de2a1d57L    # -2.0671576594697572E-14
        -0x3dfbf48752f2baedL    # -1.0761475489658728E10
        0x6a7f13b341d23b5aL    # 9.743511761886923E204
        0x38e5f42baaf4068fL    # 1.321295752852218E-34
        -0xdb1ad3c876bb793L
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_3
    .array-data 8
        -0x418dc787f6c83ef0L    # -6.787695588212675E-8
        -0x57882dbffe68f3d8L    # -9.673127419365939E-114
        -0x2e7f2efeeec9b8d3L    # -4.083592617087042E84
        -0x28836ab75324d955L    # -2.7495924480340358E113
        -0x328cfcfccf436c3L    # -2.314000752347196E293
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_4
    .array-data 8
        0x26136bdb2374f2e4L
        0x133b1138ff7edce8L
        -0x7647bc46572e48afL    # -7.705770187400689E-262
        -0x317c5e3b04303968L    # -1.6936809600111593E70
        -0x419e757b4e1c37aL    # -6.729236154905822E288
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_5
    .array-data 8
        -0x45f62827d1c3f571L    # -4.0773289421513735E-29
        0x1e4b9a1f1cd83ff6L    # 9.586354653545599E-163
    .end array-data
.end method

.method private final readBytes([BII)V
    .locals 1

    .line 1
    :goto_0
    if-lez p3, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-gt v0, p3, :cond_0

    .line 14
    .line 15
    sub-int/2addr p3, v0

    .line 16
    add-int/2addr p2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 19
    .line 20
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 p3, 0x7

    .line 23
    new-array p3, p3, [J

    .line 24
    .line 25
    fill-array-data p3, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 40
    .line 41
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 p3, 0x5

    .line 44
    new-array p3, p3, [J

    .line 45
    .line 46
    fill-array-data p3, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    return-void

    .line 61
    :array_0
    .array-data 8
        0x66e8d5d5e3c82c0dL    # 5.403020783692815E187
        0x309b8a8e68401279L    # 1.522244810650002E-74
        -0x45160f8a459d0a5fL    # -6.705150961023643E-25
        0xb57fe979011ff8L    # 3.0616526791443E-305
        -0x5482562643054e71L    # -3.390498210283108E-99
        -0x28f4aa1f7036e25aL    # -2.0543515723896767E111
        0x2cae6baf122a4628L
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
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
    :array_1
    .array-data 8
        0x297eeb99ef5cfc6eL    # 8.228591914481885E-109
        -0x26866e93256f2227L    # -1.0563702156675309E123
        0x78dfe0b6c30493c4L    # 1.7245042122102709E274
        -0x126931845686691eL    # -8.050760568479678E219
        -0x2067e1e583b6266fL    # -3.1578519179441114E152
    .end array-data
.end method

.method private final receiveMessage(I)[B
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2, v0}, Lcom/trilead/ssh2/SFTPv3Client;->readBytes([BII)V

    .line 6
    .line 7
    .line 8
    aget-byte v0, v1, v2

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    shl-int/lit8 v0, v0, 0x18

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget-byte v3, v1, v3

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0xff

    .line 18
    .line 19
    shl-int/lit8 v3, v3, 0x10

    .line 20
    .line 21
    or-int/2addr v0, v3

    .line 22
    const/4 v3, 0x2

    .line 23
    aget-byte v3, v1, v3

    .line 24
    .line 25
    and-int/lit16 v3, v3, 0xff

    .line 26
    .line 27
    shl-int/lit8 v3, v3, 0x8

    .line 28
    .line 29
    or-int/2addr v0, v3

    .line 30
    const/4 v3, 0x3

    .line 31
    aget-byte v1, v1, v3

    .line 32
    .line 33
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    or-int/2addr v0, v1

    .line 36
    if-gt v0, p1, :cond_0

    .line 37
    .line 38
    if-lez v0, :cond_0

    .line 39
    .line 40
    new-array p1, v0, [B

    .line 41
    .line 42
    invoke-direct {p0, p1, v2, v0}, Lcom/trilead/ssh2/SFTPv3Client;->readBytes([BII)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v3, 0x5

    .line 56
    new-array v3, v3, [J

    .line 57
    .line 58
    fill-array-data v3, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        -0x5ade359629a55af3L    # -8.020553929969495E-130
        -0x78b54c3aac339a28L
        0x24f3faa0f711b92cL
        -0x6a6fb9251bc3d98L
        -0x19147c9808bf0b0eL
    .end array-data
.end method

.method private final scanDirectory([B)Ljava/util/Vector;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Ljava/util/Vector;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    new-instance v4, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 13
    .line 14
    invoke-direct {v4}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 15
    .line 16
    .line 17
    array-length v5, p1

    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-virtual {v4, p1, v6, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v7, 0x5

    .line 29
    new-array v7, v7, [J

    .line 30
    .line 31
    fill-array-data v7, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 47
    .line 48
    .line 49
    :cond_1
    const/16 v5, 0xc

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {p0, v5, v3, v4}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 56
    .line 57
    .line 58
    const/high16 v4, 0x10000

    .line 59
    .line 60
    invoke-direct {p0, v4}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v7, v0, [J

    .line 71
    .line 72
    fill-array-data v7, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 88
    .line 89
    .line 90
    :cond_2
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    .line 91
    .line 92
    invoke-direct {v5, v4}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-ne v6, v3, :cond_8

    .line 104
    .line 105
    const/16 v3, 0x68

    .line 106
    .line 107
    if-ne v4, v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 114
    .line 115
    if-eqz v4, :cond_3

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v8, v1, [J

    .line 125
    .line 126
    fill-array-data v8, :array_2

    .line 127
    .line 128
    .line 129
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v8, v0, [J

    .line 145
    .line 146
    fill-array-data v8, :array_3

    .line 147
    .line 148
    .line 149
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_0
    if-lez v3, :cond_0

    .line 167
    .line 168
    new-instance v4, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;

    .line 169
    .line 170
    invoke-direct {v4}, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object v6, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    iput-object v6, v4, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v6, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    iput-object v6, v4, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->longEntry:Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iput-object v6, v4, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->attributes:Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v6, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 199
    .line 200
    if-eqz v6, :cond_4

    .line 201
    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v9, v1, [J

    .line 210
    .line 211
    fill-array-data v9, :array_4

    .line 212
    .line 213
    .line 214
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v4, v4, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array v8, v1, [J

    .line 232
    .line 233
    fill-array-data v8, :array_5

    .line 234
    .line 235
    .line 236
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_5
    const/16 p1, 0x65

    .line 257
    .line 258
    if-ne v4, p1, :cond_7

    .line 259
    .line 260
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    const/4 v0, 0x1

    .line 265
    if-ne p1, v0, :cond_6

    .line 266
    .line 267
    return-object v2

    .line 268
    :cond_6
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    .line 269
    .line 270
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    const/4 v3, 0x7

    .line 288
    new-array v3, v3, [J

    .line 289
    .line 290
    fill-array-data v3, :array_6

    .line 291
    .line 292
    .line 293
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 307
    .line 308
    new-array v1, v1, [J

    .line 309
    .line 310
    fill-array-data v1, :array_7

    .line 311
    .line 312
    .line 313
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 314
    .line 315
    .line 316
    invoke-static {v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p1

    .line 324
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 325
    .line 326
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    const/4 v1, 0x6

    .line 329
    new-array v1, v1, [J

    .line 330
    .line 331
    fill-array-data v1, :array_8

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1

    .line 345
    :array_0
    .array-data 8
        -0x3237e36c6ef2421aL    # -5.078501324711653E66
        0x32f9073c9828501cL    # 3.8025218823125794E-63
        0x1352d361daf2e8cbL
        0x50d377e3a1d58a6L
        -0x2c072ce7aec2c94cL    # -3.314062624476082E96
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_1
    .array-data 8
        0x6bd599c41cd77868L    # 2.8405586920057808E211
        0x284800a7eb1237eaL
        -0x55add55d948b249dL    # -7.920885891134823E-105
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_2
    .array-data 8
        0x6bfcccc090bddc34L
        0x1bf0256408ab3476L    # 4.080083147239214E-174
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_3
    .array-data 8
        -0x322df95c3caa9ce9L    # -7.593410655598995E66
        -0x6602f1fa0ea94be4L
        0x7839851d925d9ee2L    # 1.348206717831188E271
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_4
    .array-data 8
        0x243b25dfb072a4b5L
        -0x1ca0e74a6e10840bL    # -4.694284002313295E170
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_5
    .array-data 8
        0x6711dabae544a2e5L    # 3.107441139493266E188
        0x343ab196c94df1f8L    # 4.25255288066422E-57
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_6
    .array-data 8
        0x265c5fbf87b6f302L    # 6.706603148865046E-124
        0x473fb8a30683bcc3L    # 1.6470608218831213E35
        0x2b6027c8347d6be8L    # 9.232708471304032E-100
        0x1717eb0df01e76daL    # 1.999820467445617E-197
        0x55b1ef2348aea8e7L    # 6.426860506508608E104
        0x7438dbe25502809cL    # 7.119322873612023E251
        0x4a671846ce68eda7L    # 2.700250597608848E50
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_7
    .array-data 8
        0x47d5588d9c569de9L    # 1.1349432896475351E38
        -0x3d6db5f15bf9a32cL    # -5.027320627607207E12
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_8
    .array-data 8
        -0x3fa8eaec13c93eb9L    # -92.32934098574798
        -0x3685b645536abb45L    # -9.379873503317176E45
        0x26dcb6496ef27864L
        0x26e0cb8ec32a067fL
        0x14bcc32b62f77476L
        0x34ae1f1e1273bd9aL    # 6.1422594328733336E-55
    .end array-data
.end method

.method private final sendMessage(II[B)V
    .locals 6

    .line 12
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[BII)V

    return-void
.end method

.method private final sendMessage(II[BII)V
    .locals 4

    add-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, p5, 0x5

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x10

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    if-eq p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 8
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 9
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, p1, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v4, v0, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p2, v1, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 47
    .line 48
    .line 49
    const p1, 0x84d0

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    new-array v3, v3, [J

    .line 64
    .line 65
    fill-array-data v3, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    .line 81
    .line 82
    .line 83
    :cond_1
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    .line 84
    .line 85
    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-ne v2, v1, :cond_4

    .line 97
    .line 98
    const/16 v0, 0x69

    .line 99
    .line 100
    if-ne p1, v0, :cond_2

    .line 101
    .line 102
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :cond_2
    const/16 v0, 0x65

    .line 108
    .line 109
    if-eq p1, v0, :cond_3

    .line 110
    .line 111
    new-instance p2, Ljava/io/IOException;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v2, 0x7

    .line 121
    new-array v2, v2, [J

    .line 122
    .line 123
    fill-array-data v2, :array_2

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/4 v1, 0x2

    .line 142
    new-array v1, v1, [J

    .line 143
    .line 144
    fill-array-data v1, :array_3

    .line 145
    .line 146
    .line 147
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p2

    .line 158
    :cond_3
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-direct {v0, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 173
    .line 174
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v0, v0, [J

    .line 177
    .line 178
    fill-array-data v0, :array_4

    .line 179
    .line 180
    .line 181
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        -0x64c0b47776ea01aeL
        -0x6184ad7c2a6f5d48L
        -0x345414cbbe9c838fL    # -3.4228307649294976E56
        0x7f76a753ee24a02bL    # 9.942447535800696E305
        0x14619beb5d05b5beL
        -0xd243ae9c4823210L    # -1.896139747553489E245
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_1
    .array-data 8
        -0x5327c093b885a748L    # -1.162445812877357E-92
        -0x593ecc53f56e5aefL    # -5.204353248078415E-122
        -0x48d7f4b02ca0b693L    # -5.3908931246579884E-43
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_2
    .array-data 8
        -0x4a59c6aa0ee85b4cL    # -2.969971818286838E-50
        -0x4fbd43baf4c72f94L    # -3.236046373932535E-76
        -0x6594eb120a55b152L
        0x48ce759f0480d13bL    # 5.3067859710315996E42
        0x1ac32893dddf9c95L    # 9.234092967555167E-180
        0x270c86683b08518L
        -0x276c2e84d07d294aL    # -4.997633435797963E118
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 8
        0x77970bead3e8c62eL    # 1.1890007177804494E268
        0xf911780fd6a4968L
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_4
    .array-data 8
        -0x4c58a0eb23a19b54L    # -7.272032715971335E-60
        -0x13eef5ea5dccf34bL    # -3.585180830740308E212
        -0x7c5210b37b249dccL    # -5.999430153575689E-291
        0x60a03490f2e52a3fL    # 2.781158943926835E157
        0x77d63e6e5c325d1L
        -0x44cf0b2c99b3114L    # -7.255603997466736E287
    .end array-data
.end method


# virtual methods
.method public _stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lcom/trilead/ssh2/SFTPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lcom/trilead/ssh2/SFTPException;->getServerErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    throw p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, p1, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/16 p1, 0x10

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {p0, p1, v1, v2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 50
    .line 51
    .line 52
    const p1, 0x84d0

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    new-array v4, v4, [J

    .line 67
    .line 68
    fill-array-data v4, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 84
    .line 85
    .line 86
    :cond_1
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    .line 87
    .line 88
    invoke-direct {v2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-ne v3, v1, :cond_5

    .line 100
    .line 101
    const/16 v1, 0x68

    .line 102
    .line 103
    if-ne p1, v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/4 v1, 0x1

    .line 110
    if-ne p1, v1, :cond_2

    .line 111
    .line 112
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 120
    .line 121
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v0, v0, [J

    .line 124
    .line 125
    fill-array-data v0, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_3
    const/16 v1, 0x65

    .line 140
    .line 141
    if-eq p1, v1, :cond_4

    .line 142
    .line 143
    new-instance v1, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v0, v0, [J

    .line 153
    .line 154
    fill-array-data v0, :array_3

    .line 155
    .line 156
    .line 157
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    const/4 v0, 0x2

    .line 173
    new-array v0, v0, [J

    .line 174
    .line 175
    fill-array-data v0, :array_4

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :cond_4
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 204
    .line 205
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    const/4 v1, 0x6

    .line 208
    new-array v1, v1, [J

    .line 209
    .line 210
    fill-array-data v1, :array_5

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    nop

    .line 225
    :array_0
    .array-data 8
        0x7ba0363f038317f5L    # 3.0857430977197925E287
        -0x3737f2411e74a52cL    # -4.190744515089323E42
        0x4e9d191a7128b3a8L    # 5.020685684852437E70
        0x1b70a93301d3236eL
        -0x75d30fe003057be0L    # -1.1763107999560118E-259
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_1
    .array-data 8
        -0xdd1d06215577930L
        0x2d3181106c75b5a7L    # 5.370596377128862E-91
        -0x4c670ce6b20f1618L    # -3.881544306345885E-60
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_2
    .array-data 8
        -0x135e25a7e468ccfL
        -0x31ab6efde8c72f37L    # -2.2178803028137774E69
        -0x52cd92586a09772bL    # -5.654152227906062E-91
        0x593326fc3c713530L    # 4.9455989008400035E121
        0x2f5c7d72b5bf14daL    # 1.5017377618836546E-80
        0x690fc24998c11c7fL    # 1.1870065236503522E198
        0x5ea8b8670a0f7fcfL    # 9.877840660821437E147
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_3
    .array-data 8
        0x10a34bc468c16d3dL
        0x24d70c1ef4bffa19L    # 3.247004170178284E-131
        -0x40b718c2982c19e3L    # -7.599878150862969E-4
        0x3afe05f304d02616L    # 1.5521650985270299E-24
        -0x198f1dbf6aee4d1bL    # -2.8696404969830654E185
        -0x1ba6db8a46f87272L    # -2.4873940623403805E175
        0x563bf821476c433fL    # 2.5658981619236804E107
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_4
    .array-data 8
        -0x3e9ee349709e61bcL    # -8971700.480666287
        -0x76f5d90433598e94L
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_5
    .array-data 8
        0x4fd0f59cd5ee8d57L    # 3.06838621928967E76
        0x1f1564a670644648L    # 6.086636022125961E-159
        -0x1a7768fa8127f52bL    # -1.2754535929030795E181
        -0x3e69ef84b10455a2L    # -9.254472374576709E7
        -0x1bc77c63522e74L
        -0x7c3b0cf45e988a07L    # -1.67944468238545E-290
    .end array-data
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->sess:Lcom/trilead/ssh2/Session;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-boolean v1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->closeHandle([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iput-boolean v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 17
    .line 18
    return-void

    .line 19
    :goto_1
    iput-boolean v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 20
    .line 21
    throw v1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :array_0
    .array-data 8
        -0x5e7eb2d050e78551L    # -2.706176436636059E-147
        0x5ec169bd77357815L    # 2.7831887391175064E148
        -0x4de91f54bc8d7015L    # -2.12144459664211E-67
        -0x4ca03eaa0cd6aa74L
        0x60201bffd23567e7L    # 1.079956846382139E155
        -0x3c6a4179ee706bd1L    # -3.9170928258823264E17
    .end array-data
.end method

.method public createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1

    const/16 v0, 0xb

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->createFileTruncate(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1

    const/16 v0, 0x1b

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p2, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/16 p1, 0x14

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x32b40a3a500fea02L    # -2.300419297157328E64
        -0x73c1a03a7189571eL
        0x17dfdb474255b40bL    # 1.090992147479959E-193
        -0x3e406a8ae1d6c5cdL    # -5.298885421610443E8
        -0x42f524254a66840dL    # -1.192770592970056E-14
    .end array-data
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public fsetstat(Lcom/trilead/ssh2/SFTPv3FileHandle;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    array-length v3, p1

    .line 17
    invoke-virtual {v1, p1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    new-array v2, v2, [J

    .line 35
    .line 36
    fill-array-data v2, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 52
    .line 53
    .line 54
    :cond_0
    const/16 p1, 0xa

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 8
        0x3eba79cb7ab2d64bL    # 1.5780783353796663E-6
        -0x766363f537cbe85eL
        0x3c34cf78c52c113fL    # 1.12813602627696E-18
        0x1d9dca6373f3f405L    # 5.051976960536454E-166
        -0x309610524d7955f6L    # -3.6660301494481226E74
    .end array-data
.end method

.method public fstat(Lcom/trilead/ssh2/SFTPv3FileHandle;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    array-length v3, p1

    .line 17
    invoke-virtual {v1, p1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    new-array v3, v3, [J

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/16 p1, 0x8

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 54
    .line 55
    .line 56
    const p1, 0x84d0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    new-array v3, v3, [J

    .line 71
    .line 72
    fill-array-data v3, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 88
    .line 89
    .line 90
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 91
    .line 92
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-ne v2, v0, :cond_4

    .line 104
    .line 105
    const/16 v0, 0x69

    .line 106
    .line 107
    if-ne p1, v0, :cond_2

    .line 108
    .line 109
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :cond_2
    const/16 v0, 0x65

    .line 115
    .line 116
    if-eq p1, v0, :cond_3

    .line 117
    .line 118
    new-instance v0, Ljava/io/IOException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 v3, 0x7

    .line 128
    new-array v3, v3, [J

    .line 129
    .line 130
    fill-array-data v3, :array_2

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [J

    .line 150
    .line 151
    fill-array-data v2, :array_3

    .line 152
    .line 153
    .line 154
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 180
    .line 181
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    const/4 v1, 0x6

    .line 184
    new-array v1, v1, [J

    .line 185
    .line 186
    fill-array-data v1, :array_4

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    nop

    .line 201
    :array_0
    .array-data 8
        0x4b48488d298319adL    # 4.651776036402472E54
        0xa0f511cbf853c48L
        0x3a719b8af1cdf44eL    # 3.555824255778725E-27
        -0x1aef9847998df658L    # -6.647798471276421E178
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_1
    .array-data 8
        -0x762029a17b26bf36L    # -4.04427882833016E-261
        0x57f55d6fc1ef816L
        -0x146602a4a53f4e47L    # -2.1360816193266355E210
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_2
    .array-data 8
        0xa155869c60a5671L
        0x660038115f00e079L    # 2.1536337763817954E183
        0x7bbc7e23bcbf8c60L    # 1.0846508916241971E288
        -0x813fe2b3277f82cL
        0x7f97d2d242dcf7b1L    # 4.18236131310955E306
        0x290c5848bb65b901L
        -0x7dff87500d43bccbL    # -4.919101056816406E-299
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 8
        0x3ff9263ecbacfbaaL    # 1.5718372303087826
        0x2210ac81202be36aL
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_4
    .array-data 8
        -0x6696f987ae9982cdL
        0x57b70132d031510dL    # 3.5407445581957995E114
        -0x14c8f674c5f75c54L    # -2.9584772261453986E208
        -0x1435e83641216c00L
        0x23b6855a428d6e7L
        -0x51d6780b32274e7dL    # -2.5668496155786978E-86
    .end array-data
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 2
    .line 3
    return v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->openDirectory(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->scanDirectory([B)Ljava/util/Vector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->closeHandle([B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public lstat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0xe

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public mkdirs(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->mkdirs(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/SFTPv3Client;->mkdir(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p2

    .line 48
    new-instance v0, Ljava/io/IOException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/io/IOException;

    .line 78
    .line 79
    throw p1

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x1769e97cf72bd9a7L    # -6.449593638269205E195
        0x2fe27ac7c0d94c59L    # 4.987282220505072E-78
    .end array-data

    .line 82
    :array_1
    .array-data 8
        0x75bd0b842c88d3f6L    # 1.3955565946800766E259
        0x78df75dd7fc09e39L    # 1.7019251823312614E274
        0x6ed09c5b8854df9bL    # 6.148463142812685E225
    .end array-data
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, p2, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x12

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public openFileRW(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public read(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)I
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x4

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    const v2, 0x8000

    if-gt p6, v2, :cond_8

    if-lez p6, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v2

    .line 3
    new-instance v3, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v3}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 5
    invoke-virtual {v3, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 6
    invoke-virtual {v3, p6}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 7
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    .line 8
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/4 p1, 0x5

    .line 10
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v2, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 11
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 12
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 13
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v2, :cond_7

    const/16 p3, 0x67

    if-ne p1, p3, :cond_3

    .line 15
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    .line 16
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 18
    :cond_1
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-ltz p1, :cond_2

    if-gt p1, p6, :cond_2

    .line 19
    invoke-virtual {p2, p4, p5, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes([BII)V

    return p1

    .line 20
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p3, 0x65

    if-ne p1, p3, :cond_6

    .line 21
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    .line 22
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_4

    .line 23
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x3

    new-array p3, p3, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_4
    const/4 p1, -0x1

    return p1

    .line 25
    :cond_5
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance p3, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 27
    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p5, 0x7

    new-array p5, p5, [J

    fill-array-data p5, :array_4

    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p4, 0x2

    new-array p4, p4, [J

    fill-array-data p4, :array_5

    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 30
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_6

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_7

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x111134447fe137d8L    # 1.815586731519907E-226
        -0x1c5dd7b312298e46L    # -8.771255720904294E171
        0x7d62c1f5a91227ceL    # 9.583944556526188E295
        0x108d5b65cc098e11L    # 6.050974286453615E-229
    .end array-data

    :array_1
    .array-data 8
        -0x1d2d377dc1d64cbfL    # -1.107612999484503E168
        0x2a26f849425235b6L
        0x15dc658551ddeb4cL
        -0x29edb6a1576058a3L    # -4.194029322901448E106
    .end array-data

    :array_2
    .array-data 8
        -0x7056617910358fe1L    # -3.22299566173208E-233
        0x643a40dce81eb9f6L    # 6.493256732325316E174
        -0x6cc43ba3a8bd6f5cL    # -5.034224908529697E-216
        0x2277b0f8553dbef7L    # 1.214257401125305E-142
        -0x3e68a01870e085eaL    # -9.804029178073916E7
        0x669f93635fa81360L
    .end array-data

    :array_3
    .array-data 8
        0x3d7a099e5058937bL    # 1.4800646072027738E-12
        0x718cbb1c3f14e643L    # 9.354397179833092E238
        0x795a722bfe7a66bdL    # 3.6624842384824266E276
    .end array-data

    :array_4
    .array-data 8
        -0x5489e7a17cb24cc3L    # -2.5254526038233784E-99
        0x81f904415bbeefbL
        -0x3d37eb463441ef3cL    # -5.295459109993753E13
        -0x2caa02367f48df48L    # -2.86701972578395E93
        -0x268faa8e2dec1f7aL    # -6.748459274373295E122
        0x6c420d5c57ddd68bL    # 3.0386231768568345E213
        0x5b02918f346794e1L    # 2.5742285291466307E130
    .end array-data

    :array_5
    .array-data 8
        0x7efb3cf3df72aea8L    # 4.6697367242004956E303
        0x2711d160835d3af8L
    .end array-data

    :array_6
    .array-data 8
        -0x2b9e695ed7ca531eL    # -3.0054869630779475E98
        -0x44458bd983cc467dL    # -5.6017914604815376E-21
        -0x44322401b8d249ecL    # -1.2645926076813069E-20
        0xe7d31b1fd1284aL
        -0x6e2a9cd6c5e23802L    # -9.244855976772285E-223
        0x7ee57b595e0ccb41L    # 1.8414374641535782E303
    .end array-data

    :array_7
    .array-data 8
        -0x134f8953adbc17cdL    # -3.547160551330469E215
        -0x7dd9668b0640085dL    # -2.699678237337247E-298
        -0x56184521cc2c7173L    # -8.083294964058445E-107
        0x59a9e4974a6aa1b7L    # 8.558339124036068E123
    .end array-data
.end method

.method public read(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/trilead/ssh2/SFTPv3Client$2;

    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/SFTPv3Client$2;-><init>(Lcom/trilead/ssh2/SFTPv3Client;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-object v0
.end method

.method public readLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, p1, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/16 p1, 0x13

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {p0, p1, v1, v2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 50
    .line 51
    .line 52
    const p1, 0x84d0

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    new-array v4, v4, [J

    .line 67
    .line 68
    fill-array-data v4, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 84
    .line 85
    .line 86
    :cond_1
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    .line 87
    .line 88
    invoke-direct {v2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-ne v3, v1, :cond_5

    .line 100
    .line 101
    const/16 v1, 0x68

    .line 102
    .line 103
    if-ne p1, v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/4 v1, 0x1

    .line 110
    if-ne p1, v1, :cond_2

    .line 111
    .line 112
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 120
    .line 121
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v0, v0, [J

    .line 124
    .line 125
    fill-array-data v0, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_3
    const/16 v1, 0x65

    .line 140
    .line 141
    if-eq p1, v1, :cond_4

    .line 142
    .line 143
    new-instance v1, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v0, v0, [J

    .line 153
    .line 154
    fill-array-data v0, :array_3

    .line 155
    .line 156
    .line 157
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    const/4 v0, 0x2

    .line 173
    new-array v0, v0, [J

    .line 174
    .line 175
    fill-array-data v0, :array_4

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :cond_4
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 204
    .line 205
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    const/4 v1, 0x6

    .line 208
    new-array v1, v1, [J

    .line 209
    .line 210
    fill-array-data v1, :array_5

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    nop

    .line 225
    :array_0
    .array-data 8
        -0x2300a1073568223aL    # -9.339554124806873E139
        -0x64402a2110f4fd83L
        -0x68041b75c033e5d1L    # -3.82097226753076E-193
        -0x372b88aea3c73b5aL    # -7.131389866436645E42
        0x4953bb005a27696dL    # 1.760017104305914E45
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_1
    .array-data 8
        -0x2df84c98d1c0056dL    # -1.473369395099561E87
        -0x5f988eba8500819fL    # -1.398735218176658E-152
        0x7374e3af8e15f96aL    # 1.4605699416981755E248
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_2
    .array-data 8
        0x3552b25e3648cf31L    # 7.808127149769709E-52
        0x505716aee948f3f4L
        -0x54df9838d7533c4fL    # -5.859732982779954E-101
        0x587b9d24c2a0312aL    # 1.7408652482729414E118
        -0x313fd06a7f84ce57L    # -2.234216068551493E71
        -0x17c1f72f6c39eeecL    # -1.370303153862888E194
        0x152afdf5c912fe79L
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_3
    .array-data 8
        0x7962d9c7d8fc6865L    # 5.221239866029389E276
        -0x6e0eedabb7be0e30L    # -2.951735224760217E-222
        -0x28312599dc0bac2dL    # -9.497459893576734E114
        0x476615cc456c3902L    # 9.173811641591574E35
        0x414e565fab39ba69L    # 3976383.337699224
        0x2587a515b6298fe4L    # 6.822265946045947E-128
        -0x1c622e84e9fb27c0L    # -7.202117431913888E171
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_4
    .array-data 8
        0x25d7030681cb25d8L    # 2.12467623910764E-126
        0x56d59e9db07ed12bL    # 2.0309814523554366E110
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_5
    .array-data 8
        0x58c6b03de988c17L
        0x1c72d8c2b5e46d82L
        -0x5a53937dca973c62L
        -0x47b92f7f1bd3f77eL    # -1.340913837619569E-37
        -0x32c0d3ed80d250f7L    # -1.282348169942455E64
        -0x240a06770661f8eaL    # -9.982560365381625E134
    .end array-data
.end method

.method public rm(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0xd

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0xf

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/io/IOException;

    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/io/IOException;

    .line 38
    .line 39
    throw p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x5ea5baeda97f91c6L    # -5.13616646924794E-148
        0x7afad9c821c57af1L    # 2.495466237842625E284
        0x7d3f06f2ff28daf4L    # 1.9816072752218318E295
        0x1479ce1bf1e6eed6L    # 4.905788441358778E-210
        0x28e281f5b2072b6L
    .end array-data
.end method

.method public setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 47
    .line 48
    .line 49
    :cond_0
    const/16 p1, 0x9

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x4fd4451aea942f27L    # -1.1974072763581824E-76
        0x5c4bc7c1427c0f15L    # 4.0383584953769127E136
        -0x3859606896239b51L    # -1.5035831069395412E37
        -0x34426154a0ec5b44L    # -7.2627544207829895E56
        -0x190b9386c1bde1d8L    # -8.88653112547697E187
    .end array-data
.end method

.method public stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public write(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)V
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 3
    .line 4
    .line 5
    :goto_0
    if-lez p6, :cond_5

    .line 6
    .line 7
    const v1, 0x8000

    .line 8
    .line 9
    .line 10
    if-le p6, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    move v1, p6

    .line 14
    :goto_1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    new-instance v3, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 19
    .line 20
    invoke-direct {v3}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    array-length v6, v4

    .line 27
    invoke-virtual {v3, v4, v5, v6}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p4, p5, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    new-array v6, v6, [J

    .line 44
    .line 45
    fill-array-data v6, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {p0, v0, v2, v3}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 68
    .line 69
    .line 70
    int-to-long v3, v1

    .line 71
    add-long/2addr p2, v3

    .line 72
    add-int/2addr p5, v1

    .line 73
    sub-int/2addr p6, v1

    .line 74
    const v1, 0x84d0

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v3, Lcom/trilead/ssh2/packets/TypesReader;

    .line 82
    .line 83
    invoke-direct {v3, v1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ne v4, v2, :cond_4

    .line 95
    .line 96
    const/16 v2, 0x65

    .line 97
    .line 98
    if-ne v1, v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Lcom/trilead/ssh2/SFTPException;

    .line 112
    .line 113
    invoke-direct {p2, p1, v1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    throw p2

    .line 117
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    const/4 p4, 0x7

    .line 127
    new-array p4, p4, [J

    .line 128
    .line 129
    fill-array-data p4, :array_1

    .line 130
    .line 131
    .line 132
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    const/4 p4, 0x2

    .line 148
    new-array p4, p4, [J

    .line 149
    .line 150
    fill-array-data p4, :array_2

    .line 151
    .line 152
    .line 153
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-static {p3, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 165
    .line 166
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array p3, v0, [J

    .line 169
    .line 170
    fill-array-data p3, :array_3

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_5
    return-void

    .line 185
    :array_0
    .array-data 8
        0x3ee331c3595e7201L    # 9.152596969924135E-6
        0x4a83dd9b74a0abebL    # 9.290779150350036E50
        -0x503720d37421dee9L    # -1.6781002186025383E-78
        0x6019aad382cd21efL    # 8.603552326821202E154
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_1
    .array-data 8
        0x3dcd820acfafdac3L    # 5.367469833253639E-11
        0x1b9d0de7ed90a34L
        -0x27ce4290dd875078L    # -6.989906848695376E116
        0x466f0b51d2cdad72L    # 1.967661033226128E31
        0x39d774ea0cd9766eL    # 4.626017673621018E-30
        -0x6021732297d41226L
        0x37c8953412cfef6aL    # 5.643940017275083E-40
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_2
    .array-data 8
        0x4b9bafa69e5df3d4L    # 1.6971552076487426E56
        0x155519760a8b4120L
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_3
    .array-data 8
        0x44441819e0f8eba9L    # 7.413430959304586E20
        -0xe80811b9c6f5bdbL    # -5.1272851170115735E238
        0x4d0dbecb59c60f80L    # 1.5295628402355397E63
        -0x323032facb7e6157L    # -6.698043029131527E66
        0x7cc0498e6a5f1778L    # 8.126727107001409E292
        0x36176b670deb7482L    # 4.0060750937175475E-48
    .end array-data
.end method

.method public writeToFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/trilead/ssh2/SFTPv3Client$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/SFTPv3Client$1;-><init>(Lcom/trilead/ssh2/SFTPv3Client;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
