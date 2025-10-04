.class Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;
.super Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi23Impl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi23Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;
    .locals 2
    .param p0    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl$CameraDeviceCompatParamsApi21;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl$CameraDeviceCompatParamsApi21;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public createCaptureSession(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .locals 4
    .param p1    # Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->checkPreconditions(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->getExecutor()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->getOutputConfigurations()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->mImplParams:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl$CameraDeviceCompatParamsApi21;

    .line 26
    .line 27
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl$CameraDeviceCompatParamsApi21;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl$CameraDeviceCompatParamsApi21;->mCompatHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->getInputConfiguration()Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v3}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->unwrap()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/hardware/camera2/params/InputConfiguration;

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 51
    .line 52
    invoke-static {v1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->transformFromCompat(Ljava/util/List;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v3, p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->getSessionType()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v3, 0x1

    .line 67
    if-ne p1, v3, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 70
    .line 71
    invoke-static {v1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->unpackSurfaces(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 80
    .line 81
    invoke-static {v1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->transformFromCompat(Ljava/util/List;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void

    .line 89
    :goto_1
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    throw p1
.end method
