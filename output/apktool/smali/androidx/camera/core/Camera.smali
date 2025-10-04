.class public interface abstract Landroidx/camera/core/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCameraControl()Landroidx/camera/core/CameraControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraInfo()Landroidx/camera/core/CameraInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public varargs abstract isUseCasesCombinationSupported(Z[Landroidx/camera/core/UseCase;)Z
    .param p2    # [Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public varargs abstract isUseCasesCombinationSupported([Landroidx/camera/core/UseCase;)Z
    .param p1    # [Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public varargs abstract isUseCasesCombinationSupportedByFramework([Landroidx/camera/core/UseCase;)Z
    .param p1    # [Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method
