.class final Landroidx/camera/camera2/internal/Camera2CameraImpl$CameraConfigureAvailable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CameraConfigureAvailable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$CameraConfigureAvailable;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConfigureAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$CameraConfigureAvailable;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->mState:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 4
    .line 5
    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENED:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraImpl$CameraConfigureAvailable;->this$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->openCaptureSession()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
