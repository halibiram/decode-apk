.class public interface abstract Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted(JILandroidx/camera/core/impl/CameraCaptureResult;)V
    .param p4    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onCaptureFailed(I)V
.end method

.method public abstract onCaptureProcessProgressed(I)V
.end method

.method public abstract onCaptureProcessStarted(I)V
.end method

.method public abstract onCaptureSequenceAborted(I)V
.end method

.method public abstract onCaptureSequenceCompleted(I)V
.end method

.method public abstract onCaptureStarted(IJ)V
.end method
