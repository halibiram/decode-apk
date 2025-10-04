.class final Lcom/trilead/ssh2/Connection$1TimeoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;III)Lcom/trilead/ssh2/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeoutState"
.end annotation


# instance fields
.field isCancelled:Z

.field final synthetic this$0:Lcom/trilead/ssh2/Connection;

.field timeoutSocketClosed:Z


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/Connection$1TimeoutState;->this$0:Lcom/trilead/ssh2/Connection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    .line 10
    .line 11
    return-void
.end method
