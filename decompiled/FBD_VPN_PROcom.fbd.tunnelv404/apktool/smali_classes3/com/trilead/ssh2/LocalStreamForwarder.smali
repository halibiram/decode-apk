.class public Lcom/trilead/ssh2/LocalStreamForwarder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field cn:Lcom/trilead/ssh2/channel/Channel;

.field host_to_connect:Ljava/lang/String;

.field lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

.field port_to_connect:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->host_to_connect:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->port_to_connect:I

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0xc3cea7e3d8a8eceL
        -0x70ad752fa0847facL
        0x4862f1314cb44f5bL    # 5.156546023884707E40
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    new-array v3, v3, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x63f95bd559f55364L    # 3.9199896535260745E173
        -0x4ad7cb79338da598L    # -1.263569450911704E-52
        -0x4302e0ff4ed6d9bfL    # -6.466184101406419E-15
        0x52fa8c36833f5f76L    # 5.407863383583577E91
        0x4da3512d5c1a13dbL    # 1.0171639496665561E66
    .end array-data
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
