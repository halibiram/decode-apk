.class Lcom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$delegates:Lcom/google/common/collect/ImmutableList;

.field final synthetic val$localI:I

.field final synthetic val$state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$3;->val$state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$3;->val$delegates:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    iput p3, p0, Lcom/google/common/util/concurrent/Futures$3;->val$localI:I

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
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$3;->val$delegates:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/util/concurrent/Futures$3;->val$localI:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$300(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
