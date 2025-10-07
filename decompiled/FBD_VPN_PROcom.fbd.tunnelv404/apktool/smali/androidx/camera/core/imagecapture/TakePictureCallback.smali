.class interface abstract Landroidx/camera/core/imagecapture/TakePictureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isAborted()Z
.end method

.method public abstract onCaptureFailure(Landroidx/camera/core/ImageCaptureException;)V
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onCaptureProcessProgressed(I)V
.end method

.method public abstract onCaptureStarted()V
.end method

.method public abstract onFinalResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onFinalResult(Landroidx/camera/core/ImageProxy;)V
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onImageCaptured()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onProcessFailure(Landroidx/camera/core/ImageCaptureException;)V
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
