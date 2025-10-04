.class Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->createAndSendSurfaceOutput(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroidx/camera/core/SurfaceOutput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

.field final synthetic val$outputEdge:Landroidx/camera/core/processing/SurfaceEdge;


# direct methods
.method public constructor <init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;Landroidx/camera/core/processing/SurfaceEdge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;->this$0:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;->val$outputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;->val$outputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->getTargets()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "DualSurfaceProcessorNode"

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p1, "Downstream VideoCapture failed to provide Surface."

    .line 17
    .line 18
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Downstream node failed to provide Surface. Target: "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;->val$outputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/camera/core/processing/SurfaceEdge;->getTargets()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Landroidx/camera/core/processing/TargetUtils;->getHumanReadableName(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public onSuccess(Landroidx/camera/core/SurfaceOutput;)V
    .locals 2
    .param p1    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;->this$0:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    iget-object v0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/SurfaceProcessor;->onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V
    :try_end_0
    .catch Landroidx/camera/core/ProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    const-string v0, "DualSurfaceProcessorNode"

    const-string v1, "Failed to send SurfaceOutput to SurfaceProcessor."

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/camera/core/SurfaceOutput;

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$1;->onSuccess(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method
