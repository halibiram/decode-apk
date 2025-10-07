.class Lcom/tknetwork/tunnel/service/c_10$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_10;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_10$2;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p2, Lcom/tknetwork/tunnel/service/c_10;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    new-instance p1, Ljava/lang/Thread;

    .line 17
    .line 18
    new-instance p2, Lcom/tknetwork/tunnel/service/c_10$2$1;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/tknetwork/tunnel/service/c_10$2$1;-><init>(Lcom/tknetwork/tunnel/service/c_10$2;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p2, Lcom/tknetwork/tunnel/service/c_10;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_10$2;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_10;->endTunnelService()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method
