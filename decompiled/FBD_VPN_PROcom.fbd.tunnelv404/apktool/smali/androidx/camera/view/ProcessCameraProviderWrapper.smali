.class interface abstract Landroidx/camera/view/ProcessCameraProviderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/UseCaseGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract shutdownAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract unbind([Landroidx/camera/core/UseCase;)V
    .param p1    # [Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unbindAll()V
.end method
