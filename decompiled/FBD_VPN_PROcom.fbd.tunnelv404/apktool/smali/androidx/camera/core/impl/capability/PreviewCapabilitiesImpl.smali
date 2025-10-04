.class public Landroidx/camera/core/impl/capability/PreviewCapabilitiesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/PreviewCapabilities;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mIsStabilizationSupported:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isPreviewStabilizationSupported()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput-boolean p1, p0, Landroidx/camera/core/impl/capability/PreviewCapabilitiesImpl;->mIsStabilizationSupported:Z

    .line 9
    .line 10
    return-void
.end method

.method public static from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/PreviewCapabilities;
    .locals 1
    .param p0    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/capability/PreviewCapabilitiesImpl;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/camera/core/impl/capability/PreviewCapabilitiesImpl;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public isStabilizationSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/capability/PreviewCapabilitiesImpl;->mIsStabilizationSupported:Z

    .line 2
    .line 3
    return v0
.end method
