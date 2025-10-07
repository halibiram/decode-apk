.class public Lcom/trilead/ssh2/DynamicPortForwarder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 8
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    iget-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 3
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 5
    iget-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
