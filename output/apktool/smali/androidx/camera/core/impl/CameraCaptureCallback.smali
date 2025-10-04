.class public abstract Landroidx/camera/core/impl/CameraCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCaptureCancelled(I)V
    .locals 0

    return-void
.end method

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

.method public onCaptureProcessProgressed(II)V
    .locals 0

    return-void
.end method

.method public onCaptureStarted(I)V
    .locals 0

    return-void
.end method
