.class Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerEntry"
.end annotation


# instance fields
.field high:I

.field low:I

.field mh:Lcom/trilead/ssh2/transport/MessageHandler;

.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
