.class Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Camera2CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

.field private final mInvokeSequenceCallback:Z

.field private final mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

.field final synthetic this$0:Landroidx/camera/camera2/internal/Camera2RequestProcessor;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2RequestProcessor;Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/RequestProcessor$Callback;Z)V
    .locals 0
    .param p1    # Landroidx/camera/camera2/internal/Camera2RequestProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/RequestProcessor$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->this$0:Landroidx/camera/camera2/internal/Camera2RequestProcessor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mInvokeSequenceCallback:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->this$0:Landroidx/camera/camera2/internal/Camera2RequestProcessor;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Landroidx/camera/camera2/internal/Camera2RequestProcessor;->findOutputConfigId(Landroid/view/Surface;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-interface {p1, p2, p4, p5, p3}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;

    .line 6
    .line 7
    invoke-direct {v0, p3}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;

    .line 6
    .line 7
    sget-object v1, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    .line 8
    .line 9
    invoke-direct {v0, v1, p3}, Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;Landroid/hardware/camera2/CaptureFailure;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2, v0}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;

    .line 6
    .line 7
    invoke-direct {v0, p3}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mInvokeSequenceCallback:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureSequenceAborted(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mInvokeSequenceCallback:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 6
    .line 7
    invoke-interface {p1, p2, p3, p4}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureSequenceCompleted(IJ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 6
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mCallback:Landroidx/camera/core/impl/RequestProcessor$Callback;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2RequestProcessor$Camera2CallbackWrapper;->mRequest:Landroidx/camera/core/impl/RequestProcessor$Request;

    .line 4
    .line 5
    move-wide v2, p5

    .line 6
    move-wide v4, p3

    .line 7
    invoke-interface/range {v0 .. v5}, Landroidx/camera/core/impl/RequestProcessor$Callback;->onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
