.class Landroidx/test/core/app/ListFuture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/ListFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/ListFuture;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroidx/test/core/app/ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/ListFuture$3;->this$0:Landroidx/test/core/app/ListFuture;

    .line 2
    .line 3
    iput p2, p0, Landroidx/test/core/app/ListFuture$3;->val$index:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/test/core/app/ListFuture$3;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/core/app/ListFuture$3;->this$0:Landroidx/test/core/app/ListFuture;

    .line 2
    .line 3
    iget v1, p0, Landroidx/test/core/app/ListFuture$3;->val$index:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/test/core/app/ListFuture$3;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/test/core/app/ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
