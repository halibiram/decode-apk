.class interface abstract Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat$SessionConfigurationCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionConfigurationCompatImpl"
.end annotation


# virtual methods
.method public abstract getExecutor()Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getInputConfiguration()Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getOutputConfigurations()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionConfiguration()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSessionParameters()Landroid/hardware/camera2/CaptureRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSessionType()I
.end method

.method public abstract getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setInputConfiguration(Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;)V
    .param p1    # Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .param p1    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
