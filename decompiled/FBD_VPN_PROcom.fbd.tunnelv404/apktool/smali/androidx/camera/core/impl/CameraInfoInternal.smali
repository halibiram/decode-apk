.class public interface abstract Landroidx/camera/core/impl/CameraInfoInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraInfo;


# virtual methods
.method public abstract addSessionCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCameraCharacteristics()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraQuirks()Landroidx/camera/core/impl/Quirks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraSelector()Landroidx/camera/core/CameraSelector;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPhysicalCameraCharacteristics(Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSupportedDynamicRanges()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedHighResolutions(I)Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedOutputFormats()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedResolutions(I)Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimebase()Landroidx/camera/core/impl/Timebase;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isCaptureProcessProgressSupported()Z
.end method

.method public abstract isPostviewSupported()Z
.end method

.method public abstract isPreviewStabilizationSupported()Z
.end method

.method public abstract isVideoStabilizationSupported()Z
.end method

.method public abstract removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .param p1    # Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
