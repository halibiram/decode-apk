.class Lcom/tknetwork/tunnel/core/VpnProfile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/core/VpnProfile;->checkForRestart(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/core/VpnProfile;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/core/VpnProfile;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/VpnProfile$1;->this$0:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/core/VpnProfile$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/VpnProfile$1;->this$0:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/VpnProfile$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tknetwork/tunnel/core/VpnProfile;->getKeyStoreCertificates(Landroid/content/Context;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method
