.class Landroidx/camera/video/VideoCapture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/VideoCapture;->setupSurfaceUpdateNotifier(Landroidx/camera/core/impl/SessionConfig$Builder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/VideoCapture;

.field final synthetic val$isStreamActive:Z

.field final synthetic val$surfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroidx/camera/video/VideoCapture;Lcom/google/common/util/concurrent/ListenableFuture;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$3;->this$0:Landroidx/camera/video/VideoCapture;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/VideoCapture$3;->val$surfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/camera/video/VideoCapture$3;->val$isStreamActive:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "VideoCapture"

    .line 6
    .line 7
    const-string v1, "Surface update completed with unexpected exception"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$3;->val$surfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Landroidx/camera/video/VideoCapture$3;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v1, v0, Landroidx/camera/video/VideoCapture;->mSurfaceUpdateFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Landroidx/camera/video/VideoCapture;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v1, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-eq p1, v1, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/camera/video/VideoCapture$3;->val$isStreamActive:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/camera/video/VideoCapture;->setSourceState(Landroidx/camera/video/VideoOutput$SourceState;)V

    :cond_1
    return-void
.end method
