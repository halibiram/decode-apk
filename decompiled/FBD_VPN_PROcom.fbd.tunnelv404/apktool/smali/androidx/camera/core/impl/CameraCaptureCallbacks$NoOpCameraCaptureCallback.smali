.class final Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoOpCameraCaptureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0
    .param p2    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCaptureFailed(ILandroidx/camera/core/impl/CameraCaptureFailure;)V
    .locals 0
    .param p2    # Landroidx/camera/core/impl/CameraCaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCaptureStarted(I)V
    .locals 0

    return-void
.end method
