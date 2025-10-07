.class Lcom/tknetwork/tunnel/fragment/GraphFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tknetwork/tunnel/fragment/GraphFragment$1;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/fragment/GraphFragment$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1$1;->this$1:Lcom/tknetwork/tunnel/fragment/GraphFragment$1;

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
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1$1;->this$1:Lcom/tknetwork/tunnel/fragment/GraphFragment$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->addDataSet()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method
