.class public Lcom/jcraft/jzlib/GZIPOutputStream;
.super Lcom/jcraft/jzlib/DeflaterOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jzlib/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3

    .line 3
    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    const/4 v1, -0x1

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jzlib/Deflater;-><init>(II)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jcraft/jzlib/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->mydeflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jcraft/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V

    return-void
.end method

.method private check()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 4
    .line 5
    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 6
    .line 7
    const/16 v1, 0x2a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/jcraft/jzlib/GZIPException;

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :array_0
    .array-data 8
        -0x52fe6686c57f4e6eL    # -6.749814073830107E-92
        -0x594e57d96b58513bL
        -0x18ede1b1787da3ffL    # -3.1533836032369384E188
        0x641ea9ea94a30c91L    # 1.8960185132398527E174
        -0x3d60eda8f44cb86L    # -1.264063586239326E290
    .end array-data
.end method


# virtual methods
.method public getCRC()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 4
    .line 5
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 6
    .line 7
    const/16 v2, 0x29a

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/jcraft/jzlib/GZIPHeader;->getCRC()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    new-instance v0, Lcom/jcraft/jzlib/GZIPException;

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
    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :array_0
    .array-data 8
        0x5c580b61b4741d3eL    # 6.99057773926161E136
        -0x7b95f3e7b2947643L
        0x2b66844eacb17d55L    # 1.2868223807026393E-99
        0x2009b12f01860ab1L    # 2.395257640002008E-154
        -0x679ca70bdbb27df1L
    .end array-data
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jzlib/GZIPOutputStream;->check()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/GZIPHeader;->setComment(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jzlib/GZIPOutputStream;->check()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/GZIPHeader;->setModifiedTime(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jzlib/GZIPOutputStream;->check()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/GZIPHeader;->setName(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setOS(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jzlib/GZIPOutputStream;->check()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/GZIPHeader;->setOS(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
