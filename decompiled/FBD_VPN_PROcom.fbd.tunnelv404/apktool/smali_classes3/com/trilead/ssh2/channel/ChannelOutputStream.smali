.class public final Lcom/trilead/ssh2/channel/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field isClosed:Z


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->sendEOF(Lcom/trilead/ssh2/channel/Channel;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        -0x2efb403893b88612L    # -1.9681983600289555E82
        0x4ef0a405fc9315b9L    # 1.837600052266615E72
        -0xfc1726805d1da70L
        0x77c294bec5e0f0d2L    # 7.668952877213208E268
        0x81b302566e02ac8L
    .end array-data
.end method

.method public write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v1, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/ChannelManager;->sendData(Lcom/trilead/ssh2/channel/Channel;[BII)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x5

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x1e4688c272f2bd62L    # -5.728418108662151E162
        -0x13ac8b96d90c14e8L    # -6.549409348451921E213
        0x1ef14fd47de965caL
        0x4ce80ca24ba958aaL    # 3.0916654206732135E62
        -0x6333a0ac5ee664d0L    # -5.873379603704823E-170
    .end array-data
.end method
