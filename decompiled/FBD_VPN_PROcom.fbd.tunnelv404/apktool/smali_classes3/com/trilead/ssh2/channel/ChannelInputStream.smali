.class public final Lcom/trilead/ssh2/channel/ChannelInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field extendedFlag:Z

.field isClosed:Z

.field isEOF:Z


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isClosed:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 10
    .line 11
    iget-boolean v3, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    .line 12
    .line 13
    invoke-virtual {v2, v0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->getAvailable(Lcom/trilead/ssh2/channel/Channel;Z)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isClosed:Z

    .line 3
    .line 4
    return-void
.end method

.method public read()I
    .locals 4

    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2, v0}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([BII)I

    move-result v3

    if-eq v3, v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 10
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-boolean v4, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannelData(Lcom/trilead/ssh2/channel/Channel;Z[BII)I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    :cond_2
    return p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
