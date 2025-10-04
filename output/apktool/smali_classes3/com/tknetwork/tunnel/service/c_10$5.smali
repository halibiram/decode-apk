.class Lcom/tknetwork/tunnel/service/c_10$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/service/c_10;->endTunnelService()V
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
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_10$5;->this$0:Lcom/tknetwork/tunnel/service/c_10;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10$5;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10$5;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10$5;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 13
    .line 14
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->removeStateListener(Lde/blinkt/openvpn/core/TkLogStatus$StateListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
