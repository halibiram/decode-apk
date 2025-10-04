.class Landroidx/camera/core/impl/utils/executor/SequentialExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/executor/SequentialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$1;->this$0:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

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
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
