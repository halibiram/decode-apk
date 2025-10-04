.class Landroidx/camera/core/imagecapture/CaptureNode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/imagecapture/CaptureNode;->onRequestAvailable(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
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
.field final synthetic this$0:Landroidx/camera/core/imagecapture/CaptureNode;

.field final synthetic val$request:Landroidx/camera/core/imagecapture/ProcessingRequest;


# direct methods
.method public constructor <init>(Landroidx/camera/core/imagecapture/CaptureNode;Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->val$request:Landroidx/camera/core/imagecapture/ProcessingRequest;

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
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->val$request:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "request aborted, id="

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getRequestId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "CaptureNode"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 40
    .line 41
    invoke-static {p1}, Landroidx/camera/core/imagecapture/CaptureNode;->access$000(Landroidx/camera/core/imagecapture/CaptureNode;)Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/camera/core/imagecapture/CaptureNode;->access$000(Landroidx/camera/core/imagecapture/CaptureNode;)Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->clearProcessingRequest()V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$2;->this$0:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p1, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/CaptureNode$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
