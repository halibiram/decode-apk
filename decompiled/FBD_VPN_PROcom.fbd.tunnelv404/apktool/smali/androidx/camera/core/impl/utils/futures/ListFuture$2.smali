.class Landroidx/camera/core/impl/utils/futures/ListFuture$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/futures/ListFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/futures/ListFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$2;->this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

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
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$2;->this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mValues:Ljava/util/List;

    .line 5
    .line 6
    iput-object v1, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->mFutures:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
