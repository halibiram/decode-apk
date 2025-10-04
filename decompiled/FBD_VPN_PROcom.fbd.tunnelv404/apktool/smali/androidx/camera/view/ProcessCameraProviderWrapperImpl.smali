.class Landroidx/camera/view/ProcessCameraProviderWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/view/ProcessCameraProviderWrapper;


# instance fields
.field private final mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .locals 1
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/core/ExperimentalCameraInfo;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 1
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public shutdownAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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

    .line 1
    iget-object v0, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->shutdownAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public varargs unbind([Landroidx/camera/core/UseCase;)V
    .locals 1
    .param p1    # [Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbind([Landroidx/camera/core/UseCase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unbindAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/ProcessCameraProviderWrapperImpl;->mProcessCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
