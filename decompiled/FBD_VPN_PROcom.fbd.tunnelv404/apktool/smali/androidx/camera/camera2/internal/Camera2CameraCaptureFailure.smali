.class public final Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;
.super Landroidx/camera/core/impl/CameraCaptureFailure;
.source "SourceFile"


# instance fields
.field private final mCaptureFailure:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;->mCaptureFailure:Landroid/hardware/camera2/CaptureFailure;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCaptureFailure()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureFailure;->mCaptureFailure:Landroid/hardware/camera2/CaptureFailure;

    .line 2
    .line 3
    return-object v0
.end method
