.class Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->associateLatch(Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$latchId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->this$0:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->val$latchId:Ljava/util/UUID;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->this$0:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-static {v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->access$700(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->val$latchId:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
