.class Landroidx/camera/camera2/internal/FocusMeteringControl$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl$1;->this$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCaptureCancelled(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 6
    .line 7
    const-string v1, "Camera is closed"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0
    .param p2    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCaptureFailed(ILandroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 1
    .param p2    # Landroidx/camera/core/impl/CameraCaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/core/impl/CameraControlInternal$CameraControlException;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Landroidx/camera/core/impl/CameraControlInternal$CameraControlException;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
