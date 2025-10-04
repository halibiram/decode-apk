.class public final Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ConcurrentCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleCameraConfig"
.end annotation


# instance fields
.field private mCameraSelector:Landroidx/camera/core/CameraSelector;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mUseCaseGroup:Landroidx/camera/core/UseCaseGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/camera/core/LayoutSettings;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/UseCaseGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 4
    iput-object p2, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mUseCaseGroup:Landroidx/camera/core/UseCaseGroup;

    .line 5
    iput-object p3, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 6
    iput-object p4, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/UseCaseGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;-><init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/camera/core/LayoutSettings;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method


# virtual methods
.method public getCameraSelector()Landroidx/camera/core/CameraSelector;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutSettings()Landroidx/camera/core/LayoutSettings;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->mUseCaseGroup:Landroidx/camera/core/UseCaseGroup;

    .line 2
    .line 3
    return-object v0
.end method
