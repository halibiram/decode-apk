.class public Landroidx/camera/core/impl/RestrictedCameraInfo;
.super Landroidx/camera/core/impl/ForwardingCameraInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/RestrictedCameraInfo$CameraOperation;
    }
.end annotation


# static fields
.field public static final CAMERA_OPERATION_AE_REGION:I = 0x3

.field public static final CAMERA_OPERATION_AF_REGION:I = 0x2

.field public static final CAMERA_OPERATION_AUTO_FOCUS:I = 0x1

.field public static final CAMERA_OPERATION_AWB_REGION:I = 0x4

.field public static final CAMERA_OPERATION_EXPOSURE_COMPENSATION:I = 0x7

.field public static final CAMERA_OPERATION_EXTENSION_STRENGTH:I = 0x8

.field public static final CAMERA_OPERATION_FLASH:I = 0x5

.field public static final CAMERA_OPERATION_TORCH:I = 0x6

.field public static final CAMERA_OPERATION_ZOOM:I


# instance fields
.field private final mCameraConfig:Landroidx/camera/core/impl/CameraConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private mIsCaptureProcessProgressSupported:Z

.field private mIsPostviewSupported:Z

.field private final mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mIsPostviewSupported:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mIsCaptureProcessProgressSupported:Z

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-interface {p2, p1}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->isPostviewSupported()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/RestrictedCameraInfo;->setPostviewSupported(Z)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->isCaptureProcessProgressSupported()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/RestrictedCameraInfo;->setCaptureProcessProgressSupported(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public getCameraConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExposureState()Landroidx/camera/core/ExposureState;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->isOperationSupported(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/camera/core/impl/RestrictedCameraInfo$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/camera/core/impl/RestrictedCameraInfo$1;-><init>(Landroidx/camera/core/impl/RestrictedCameraInfo;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 21
    .line 22
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getExposureState()Landroidx/camera/core/ExposureState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTorchState()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->isOperationSupported(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->isOperationSupported(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-static {v2, v2, v2, v1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(FFFF)Landroidx/camera/core/ZoomState;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 28
    .line 29
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public hasFlashUnit()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->isOperationSupported(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public isCaptureProcessProgressSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mIsCaptureProcessProgressSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFocusMeteringSupported(Landroidx/camera/core/FocusMeteringAction;)Z
    .locals 1
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mSessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->getModifiedFocusMeteringAction(Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/core/FocusMeteringAction;)Landroidx/camera/core/FocusMeteringAction;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/camera/core/CameraInfo;->isFocusMeteringSupported(Landroidx/camera/core/FocusMeteringAction;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public isPostviewSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mIsPostviewSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCaptureProcessProgressSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mIsCaptureProcessProgressSupported:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPostviewSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/impl/RestrictedCameraInfo;->mIsPostviewSupported:Z

    .line 2
    .line 3
    return-void
.end method
