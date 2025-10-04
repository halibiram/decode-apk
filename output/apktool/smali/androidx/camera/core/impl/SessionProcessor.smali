.class public interface abstract Landroidx/camera/core/impl/SessionProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
    }
.end annotation


# virtual methods
.method public abstract abortCapture(I)V
.end method

.method public abstract deInitSession()V
.end method

.method public abstract getRealtimeCaptureLatency()Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedCameraOperations()Ljava/util/Set;
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

.method public abstract getSupportedPostviewSize(Landroid/util/Size;)Ljava/util/Map;
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract initSession(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/impl/OutputSurfaceConfiguration;)Landroidx/camera/core/impl/SessionConfig;
    .param p1    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/OutputSurfaceConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract onCaptureSessionEnd()V
.end method

.method public abstract onCaptureSessionStart(Landroidx/camera/core/impl/RequestProcessor;)V
    .param p1    # Landroidx/camera/core/impl/RequestProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setParameters(Landroidx/camera/core/impl/Config;)V
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startCapture(ZLandroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .param p2    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startRepeating(Landroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .param p1    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startTrigger(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopRepeating()V
.end method
