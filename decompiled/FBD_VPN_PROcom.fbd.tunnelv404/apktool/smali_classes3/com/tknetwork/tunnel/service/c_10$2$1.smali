.class Lcom/tknetwork/tunnel/service/c_10$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/service/c_10$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tknetwork/tunnel/service/c_10$2;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_10$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_10$2$1;->this$1:Lcom/tknetwork/tunnel/service/c_10$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->reconnectSSH()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
