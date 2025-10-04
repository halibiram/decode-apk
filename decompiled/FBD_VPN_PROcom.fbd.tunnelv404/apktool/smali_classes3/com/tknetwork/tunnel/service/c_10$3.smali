.class Lcom/tknetwork/tunnel/service/c_10$3;
.super Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub;
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
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_10$3;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public stopVPN()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10$3;->this$0:Lcom/tknetwork/tunnel/service/c_10;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_10;->stopTunnel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
