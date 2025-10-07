.class public Lcom/trilead/ssh2/LocalPortForwarder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

.field port_to_connect:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/LocalPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 3
    iput-object p3, p0, Lcom/trilead/ssh2/LocalPortForwarder;->host_to_connect:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/trilead/ssh2/LocalPortForwarder;->port_to_connect:I

    .line 5
    new-instance v0, Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/LocalAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 7
    iget-object p1, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/trilead/ssh2/LocalPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 10
    iput-object p3, p0, Lcom/trilead/ssh2/LocalPortForwarder;->host_to_connect:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/trilead/ssh2/LocalPortForwarder;->port_to_connect:I

    .line 12
    new-instance v0, Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/LocalAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    const/4 p1, 0x1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 14
    iget-object p1, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
