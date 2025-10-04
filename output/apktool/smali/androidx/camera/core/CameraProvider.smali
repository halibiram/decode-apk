.class public interface abstract Landroidx/camera/core/CameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAvailableCameraInfos()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/camera/core/ExperimentalCameraInfo;
    .end annotation
.end method

.method public abstract hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
